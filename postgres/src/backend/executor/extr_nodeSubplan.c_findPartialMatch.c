
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef TYPE_1__* TupleHashTable ;
typedef int TupleHashIterator ;
typedef TYPE_2__* TupleHashEntry ;
struct TYPE_8__ {int firstTuple; } ;
struct TYPE_7__ {int numCols; int tempcxt; int tab_collations; int tableslot; int * keyColIdx; } ;
typedef int FmgrInfo ;
typedef int AttrNumber ;


 int CHECK_FOR_INTERRUPTS () ;
 int ExecStoreMinimalTuple (int ,int ,int) ;
 int InitTupleHashIterator (TYPE_1__*,int *) ;
 TYPE_2__* ScanTupleHashTable (TYPE_1__*,int *) ;
 int TermTupleHashIterator (int *) ;
 int execTuplesUnequal (int *,int ,int,int *,int *,int ,int ) ;

__attribute__((used)) static bool
findPartialMatch(TupleHashTable hashtable, TupleTableSlot *slot,
     FmgrInfo *eqfunctions)
{
 int numCols = hashtable->numCols;
 AttrNumber *keyColIdx = hashtable->keyColIdx;
 TupleHashIterator hashiter;
 TupleHashEntry entry;

 InitTupleHashIterator(hashtable, &hashiter);
 while ((entry = ScanTupleHashTable(hashtable, &hashiter)) != ((void*)0))
 {
  CHECK_FOR_INTERRUPTS();

  ExecStoreMinimalTuple(entry->firstTuple, hashtable->tableslot, 0);
  if (!execTuplesUnequal(slot, hashtable->tableslot,
          numCols, keyColIdx,
          eqfunctions,
          hashtable->tab_collations,
          hashtable->tempcxt))
  {
   TermTupleHashIterator(&hashiter);
   return 1;
  }
 }

 return 0;
}
