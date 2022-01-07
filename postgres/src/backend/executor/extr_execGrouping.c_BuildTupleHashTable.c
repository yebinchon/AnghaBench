
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleHashTable ;
typedef int TupleDesc ;
typedef int Size ;
typedef int PlanState ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int FmgrInfo ;
typedef int AttrNumber ;


 int BuildTupleHashTableExt (int *,int ,int,int *,int const*,int *,int *,long,int ,int ,int ,int ,int) ;

TupleHashTable
BuildTupleHashTable(PlanState *parent,
     TupleDesc inputDesc,
     int numCols, AttrNumber *keyColIdx,
     const Oid *eqfuncoids,
     FmgrInfo *hashfunctions,
     Oid *collations,
     long nbuckets, Size additionalsize,
     MemoryContext tablecxt,
     MemoryContext tempcxt,
     bool use_variable_hash_iv)
{
 return BuildTupleHashTableExt(parent,
          inputDesc,
          numCols, keyColIdx,
          eqfuncoids,
          hashfunctions,
          collations,
          nbuckets, additionalsize,
          tablecxt,
          tablecxt,
          tempcxt,
          use_variable_hash_iv);
}
