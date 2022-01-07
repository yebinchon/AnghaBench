
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* state; } ;
struct TYPE_8__ {scalar_t__ ats_tgoid; int ats_event; } ;
struct TYPE_7__ {int numstates; int all_isdeferred; scalar_t__ all_isset; TYPE_1__* trigstates; } ;
struct TYPE_6__ {scalar_t__ sct_tgoid; int sct_tgisdeferred; } ;
typedef TYPE_2__* SetConstraintState ;
typedef scalar_t__ Oid ;
typedef TYPE_3__* AfterTriggerShared ;


 int AFTER_TRIGGER_DEFERRABLE ;
 int AFTER_TRIGGER_INITDEFERRED ;
 TYPE_4__ afterTriggers ;

__attribute__((used)) static bool
afterTriggerCheckState(AfterTriggerShared evtshared)
{
 Oid tgoid = evtshared->ats_tgoid;
 SetConstraintState state = afterTriggers.state;
 int i;





 if ((evtshared->ats_event & AFTER_TRIGGER_DEFERRABLE) == 0)
  return 0;





 if (state != ((void*)0))
 {

  for (i = 0; i < state->numstates; i++)
  {
   if (state->trigstates[i].sct_tgoid == tgoid)
    return state->trigstates[i].sct_tgisdeferred;
  }


  if (state->all_isset)
   return state->all_isdeferred;
 }




 return ((evtshared->ats_event & AFTER_TRIGGER_INITDEFERRED) != 0);
}
