
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_10__ {scalar_t__ trig_delete_after_row; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_11__ {scalar_t__ tcs_delete_old_table; } ;
typedef TYPE_2__ TransitionCaptureState ;
struct TYPE_12__ {TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef int ItemPointer ;
typedef int * HeapTuple ;
typedef int EState ;


 int AfterTriggerSaveEvent (int *,TYPE_3__*,int ,int,int *,int *,int ,int *,TYPE_2__*) ;
 int Assert (int) ;
 int ExecForceStoreHeapTuple (int *,int *,int) ;
 int * ExecGetTriggerOldSlot (int *,TYPE_3__*) ;
 int GetTupleForTrigger (int *,int *,TYPE_3__*,int ,int ,int *,int *) ;
 int HeapTupleIsValid (int *) ;
 int ItemPointerIsValid (int ) ;
 int LockTupleExclusive ;
 int NIL ;
 int TRIGGER_EVENT_DELETE ;

void
ExecARDeleteTriggers(EState *estate, ResultRelInfo *relinfo,
      ItemPointer tupleid,
      HeapTuple fdw_trigtuple,
      TransitionCaptureState *transition_capture)
{
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
 TupleTableSlot *slot = ExecGetTriggerOldSlot(estate, relinfo);

 if ((trigdesc && trigdesc->trig_delete_after_row) ||
  (transition_capture && transition_capture->tcs_delete_old_table))
 {
  Assert(HeapTupleIsValid(fdw_trigtuple) ^ ItemPointerIsValid(tupleid));
  if (fdw_trigtuple == ((void*)0))
   GetTupleForTrigger(estate,
          ((void*)0),
          relinfo,
          tupleid,
          LockTupleExclusive,
          slot,
          ((void*)0));
  else
   ExecForceStoreHeapTuple(fdw_trigtuple, slot, 0);

  AfterTriggerSaveEvent(estate, relinfo, TRIGGER_EVENT_DELETE,
         1, slot, ((void*)0), NIL, ((void*)0),
         transition_capture);
 }
}
