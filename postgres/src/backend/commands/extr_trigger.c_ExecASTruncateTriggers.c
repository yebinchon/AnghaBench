
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ trig_truncate_after_statement; } ;
typedef TYPE_1__ TriggerDesc ;
struct TYPE_6__ {TYPE_1__* ri_TrigDesc; } ;
typedef TYPE_2__ ResultRelInfo ;
typedef int EState ;


 int AfterTriggerSaveEvent (int *,TYPE_2__*,int ,int,int *,int *,int ,int *,int *) ;
 int NIL ;
 int TRIGGER_EVENT_TRUNCATE ;

void
ExecASTruncateTriggers(EState *estate, ResultRelInfo *relinfo)
{
 TriggerDesc *trigdesc = relinfo->ri_TrigDesc;

 if (trigdesc && trigdesc->trig_truncate_after_statement)
  AfterTriggerSaveEvent(estate, relinfo, TRIGGER_EVENT_TRUNCATE,
         0, ((void*)0), ((void*)0), NIL, ((void*)0), ((void*)0));
}
