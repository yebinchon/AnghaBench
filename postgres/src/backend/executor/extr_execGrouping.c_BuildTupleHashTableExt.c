
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleHashTableData ;
typedef TYPE_1__* TupleHashTable ;
typedef int TupleHashEntryData ;
typedef int TupleDesc ;
struct TYPE_4__ {int numCols; long entrysize; int exprcontext; int tab_eq_func; int * tableslot; int hashtab; scalar_t__ hash_iv; int * cur_eq_func; int * in_hash_funcs; int * inputslot; scalar_t__ tempcxt; scalar_t__ tablecxt; int * tab_collations; int * tab_hash_funcs; int * keyColIdx; } ;
typedef long Size ;
typedef int PlanState ;
typedef int Oid ;
typedef scalar_t__ MemoryContext ;
typedef int FmgrInfo ;
typedef int AttrNumber ;


 int Assert (int) ;
 int CreateStandaloneExprContext () ;
 int CreateTupleDescCopy (int ) ;
 int ExecBuildGroupingEqual (int ,int ,int *,int *,int,int *,int const*,int *,int *) ;
 int * MakeSingleTupleTableSlot (int ,int *) ;
 scalar_t__ MemoryContextSwitchTo (scalar_t__) ;
 long Min (long,long) ;
 int ParallelWorkerNumber ;
 int TTSOpsMinimalTuple ;
 scalar_t__ murmurhash32 (int ) ;
 scalar_t__ palloc (int) ;
 int tuplehash_create (scalar_t__,long,TYPE_1__*) ;
 long work_mem ;

TupleHashTable
BuildTupleHashTableExt(PlanState *parent,
        TupleDesc inputDesc,
        int numCols, AttrNumber *keyColIdx,
        const Oid *eqfuncoids,
        FmgrInfo *hashfunctions,
        Oid *collations,
        long nbuckets, Size additionalsize,
        MemoryContext metacxt,
        MemoryContext tablecxt,
        MemoryContext tempcxt,
        bool use_variable_hash_iv)
{
 TupleHashTable hashtable;
 Size entrysize = sizeof(TupleHashEntryData) + additionalsize;
 MemoryContext oldcontext;
 bool allow_jit;

 Assert(nbuckets > 0);


 nbuckets = Min(nbuckets, (long) ((work_mem * 1024L) / entrysize));

 oldcontext = MemoryContextSwitchTo(metacxt);

 hashtable = (TupleHashTable) palloc(sizeof(TupleHashTableData));

 hashtable->numCols = numCols;
 hashtable->keyColIdx = keyColIdx;
 hashtable->tab_hash_funcs = hashfunctions;
 hashtable->tab_collations = collations;
 hashtable->tablecxt = tablecxt;
 hashtable->tempcxt = tempcxt;
 hashtable->entrysize = entrysize;
 hashtable->tableslot = ((void*)0);
 hashtable->inputslot = ((void*)0);
 hashtable->in_hash_funcs = ((void*)0);
 hashtable->cur_eq_func = ((void*)0);
 if (use_variable_hash_iv)
  hashtable->hash_iv = murmurhash32(ParallelWorkerNumber);
 else
  hashtable->hash_iv = 0;

 hashtable->hashtab = tuplehash_create(metacxt, nbuckets, hashtable);





 hashtable->tableslot = MakeSingleTupleTableSlot(CreateTupleDescCopy(inputDesc),
             &TTSOpsMinimalTuple);
 allow_jit = metacxt != tablecxt;



 hashtable->tab_eq_func = ExecBuildGroupingEqual(inputDesc, inputDesc,
             &TTSOpsMinimalTuple, &TTSOpsMinimalTuple,
             numCols,
             keyColIdx, eqfuncoids, collations,
             allow_jit ? parent : ((void*)0));







 hashtable->exprcontext = CreateStandaloneExprContext();

 MemoryContextSwitchTo(oldcontext);

 return hashtable;
}
