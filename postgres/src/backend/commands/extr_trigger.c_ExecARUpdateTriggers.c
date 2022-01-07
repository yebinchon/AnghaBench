
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_11__ {scalar_t__ trig_update_after_row; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_12__ {scalar_t__ tcs_update_new_table; scalar_t__ tcs_update_old_table; } ;
typedef TYPE_2__ TransitionCaptureState ;
struct TYPE_13__ {TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef int List ;
typedef int ItemPointer ;
typedef int * HeapTuple ;
typedef int EState ;


 int AfterTriggerSaveEvent (int *,TYPE_3__*,int ,int,int *,int *,int *,int ,TYPE_2__*) ;
 int ExecClearTuple (int *) ;
 int ExecForceStoreHeapTuple (int *,int *,int) ;
 int * ExecGetTriggerOldSlot (int *,TYPE_3__*) ;
 int GetAllUpdatedColumns (TYPE_3__*,int *) ;
 int GetTupleForTrigger (int *,int *,TYPE_3__*,int ,int ,int *,int *) ;
 scalar_t__ ItemPointerIsValid (int ) ;
 int LockTupleExclusive ;
 int TRIGGER_EVENT_UPDATE ;

void
ExecARUpdateTriggers(EState *estate, ResultRelInfo *relinfo,
      ItemPointer tupleid,
      HeapTuple fdw_trigtuple,
      TupleTableSlot *newslot,
      List *recheckIndexes,
      TransitionCaptureState *transition_capture)
{
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;
 TupleTableSlot *oldslot = ExecGetTriggerOldSlot(estate, relinfo);

 ExecClearTuple(oldslot);

 if ((trigdesc && trigdesc->trig_update_after_row) ||
  (transition_capture &&
   (transition_capture->tcs_update_old_table ||
    transition_capture->tcs_update_new_table)))
 {






  if (fdw_trigtuple == ((void*)0) && ItemPointerIsValid(tupleid))
   GetTupleForTrigger(estate,
          ((void*)0),
          relinfo,
          tupleid,
          LockTupleExclusive,
          oldslot,
          ((void*)0));
  else if (fdw_trigtuple != ((void*)0))
   ExecForceStoreHeapTuple(fdw_trigtuple, oldslot, 0);

  AfterTriggerSaveEvent(estate, relinfo, TRIGGER_EVENT_UPDATE,
         1, oldslot, newslot, recheckIndexes,
         GetAllUpdatedColumns(relinfo, estate),
         transition_capture);
 }
}
