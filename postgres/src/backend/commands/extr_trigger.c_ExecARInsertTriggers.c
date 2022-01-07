
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_8__ {scalar_t__ trig_insert_after_row; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_9__ {scalar_t__ tcs_insert_new_table; } ;
typedef TYPE_2__ TransitionCaptureState ;
struct TYPE_10__ {TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef int List ;
typedef int EState ;


 int AfterTriggerSaveEvent (int *,TYPE_3__*,int ,int,int *,int *,int *,int *,TYPE_2__*) ;
 int TRIGGER_EVENT_INSERT ;

void
ExecARInsertTriggers(EState *estate, ResultRelInfo *relinfo,
      TupleTableSlot *slot, List *recheckIndexes,
      TransitionCaptureState *transition_capture)
{
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;

 if ((trigdesc && trigdesc->trig_insert_after_row) ||
  (transition_capture && transition_capture->tcs_insert_new_table))
  AfterTriggerSaveEvent(estate, relinfo, TRIGGER_EVENT_INSERT,
         1, ((void*)0), slot,
         recheckIndexes, ((void*)0),
         transition_capture);
}
