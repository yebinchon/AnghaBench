
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_7__ {TYPE_4__* state; } ;
struct TYPE_8__ {int ss_currentScanDesc; int * ss_ScanTupleSlot; int ss_currentRelation; TYPE_1__ ps; } ;
struct TYPE_9__ {int tss_NumTids; int tss_TidPtr; scalar_t__ tss_isCurrentOf; int * tss_TidList; TYPE_2__ ss; } ;
typedef TYPE_3__ TidScanState ;
typedef int TableScanDesc ;
struct TYPE_10__ {int es_snapshot; int es_direction; } ;
typedef int Snapshot ;
typedef int ScanDirection ;
typedef int Relation ;
typedef int ItemPointerData ;
typedef TYPE_4__ EState ;


 int CHECK_FOR_INTERRUPTS () ;
 int * ExecClearTuple (int *) ;
 int ScanDirectionIsBackward (int ) ;
 int TidListEval (TYPE_3__*) ;
 scalar_t__ table_tuple_fetch_row_version (int ,int *,int ,int *) ;
 int table_tuple_get_latest_tid (int ,int *) ;

__attribute__((used)) static TupleTableSlot *
TidNext(TidScanState *node)
{
 EState *estate;
 ScanDirection direction;
 Snapshot snapshot;
 TableScanDesc scan;
 Relation heapRelation;
 TupleTableSlot *slot;
 ItemPointerData *tidList;
 int numTids;
 bool bBackward;




 estate = node->ss.ps.state;
 direction = estate->es_direction;
 snapshot = estate->es_snapshot;
 heapRelation = node->ss.ss_currentRelation;
 slot = node->ss.ss_ScanTupleSlot;




 if (node->tss_TidList == ((void*)0))
  TidListEval(node);

 scan = node->ss.ss_currentScanDesc;
 tidList = node->tss_TidList;
 numTids = node->tss_NumTids;




 bBackward = ScanDirectionIsBackward(direction);
 if (bBackward)
 {
  if (node->tss_TidPtr < 0)
  {

   node->tss_TidPtr = numTids - 1;
  }
  else
   node->tss_TidPtr--;
 }
 else
 {
  if (node->tss_TidPtr < 0)
  {

   node->tss_TidPtr = 0;
  }
  else
   node->tss_TidPtr++;
 }

 while (node->tss_TidPtr >= 0 && node->tss_TidPtr < numTids)
 {
  ItemPointerData tid = tidList[node->tss_TidPtr];






  if (node->tss_isCurrentOf)
   table_tuple_get_latest_tid(scan, &tid);

  if (table_tuple_fetch_row_version(heapRelation, &tid, snapshot, slot))
   return slot;


  if (bBackward)
   node->tss_TidPtr--;
  else
   node->tss_TidPtr++;

  CHECK_FOR_INTERRUPTS();
 }





 return ExecClearTuple(slot);
}
