
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ trig_update_after_statement; } ;
typedef TYPE_1__ TriggerDesc ;
typedef int TransitionCaptureState ;
struct TYPE_7__ {TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_2__ ResultRelInfo ;
typedef int EState ;


 int AfterTriggerSaveEvent (int *,TYPE_2__*,int ,int,int *,int *,int ,int ,int *) ;
 int GetAllUpdatedColumns (TYPE_2__*,int *) ;
 int NIL ;
 int TRIGGER_EVENT_UPDATE ;

void
ExecASUpdateTriggers(EState *estate, ResultRelInfo *relinfo,
      TransitionCaptureState *transition_capture)
{
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;

 if (trigdesc && trigdesc->trig_update_after_statement)
  AfterTriggerSaveEvent(estate, relinfo, TRIGGER_EVENT_UPDATE,
         0, ((void*)0), ((void*)0), NIL,
         GetAllUpdatedColumns(relinfo, estate),
         transition_capture);
}
