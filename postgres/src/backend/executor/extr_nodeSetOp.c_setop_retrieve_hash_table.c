
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_8__ {int firstTuple; scalar_t__ additional; } ;
typedef TYPE_2__ TupleHashEntryData ;
struct TYPE_7__ {int * ps_ResultTupleSlot; } ;
struct TYPE_9__ {int setop_done; scalar_t__ numOutput; int hashiter; int hashtable; TYPE_1__ ps; } ;
typedef int SetOpStatePerGroup ;
typedef TYPE_3__ SetOpState ;


 int CHECK_FOR_INTERRUPTS () ;
 int ExecClearTuple (int *) ;
 int * ExecStoreMinimalTuple (int ,int *,int) ;
 TYPE_2__* ScanTupleHashTable (int ,int *) ;
 int set_output_count (TYPE_3__*,int ) ;

__attribute__((used)) static TupleTableSlot *
setop_retrieve_hash_table(SetOpState *setopstate)
{
 TupleHashEntryData *entry;
 TupleTableSlot *resultTupleSlot;




 resultTupleSlot = setopstate->ps.ps_ResultTupleSlot;




 while (!setopstate->setop_done)
 {
  CHECK_FOR_INTERRUPTS();




  entry = ScanTupleHashTable(setopstate->hashtable, &setopstate->hashiter);
  if (entry == ((void*)0))
  {

   setopstate->setop_done = 1;
   return ((void*)0);
  }





  set_output_count(setopstate, (SetOpStatePerGroup) entry->additional);

  if (setopstate->numOutput > 0)
  {
   setopstate->numOutput--;
   return ExecStoreMinimalTuple(entry->firstTuple,
           resultTupleSlot,
           0);
  }
 }


 ExecClearTuple(resultTupleSlot);
 return ((void*)0);
}
