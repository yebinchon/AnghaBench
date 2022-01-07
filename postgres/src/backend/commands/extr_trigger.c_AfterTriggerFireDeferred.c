
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * head; } ;
struct TYPE_6__ {int query_depth; int firing_counter; TYPE_1__ events; } ;
typedef int CommandId ;
typedef TYPE_1__ AfterTriggerEventList ;


 int Assert (int) ;
 int GetTransactionSnapshot () ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 scalar_t__ afterTriggerInvokeEvents (TYPE_1__*,int ,int *,int) ;
 scalar_t__ afterTriggerMarkEvents (TYPE_1__*,int *,int) ;
 TYPE_2__ afterTriggers ;

void
AfterTriggerFireDeferred(void)
{
 AfterTriggerEventList *events;
 bool snap_pushed = 0;


 Assert(afterTriggers.query_depth == -1);






 events = &afterTriggers.events;
 if (events->head != ((void*)0))
 {
  PushActiveSnapshot(GetTransactionSnapshot());
  snap_pushed = 1;
 }





 while (afterTriggerMarkEvents(events, ((void*)0), 0))
 {
  CommandId firing_id = afterTriggers.firing_counter++;

  if (afterTriggerInvokeEvents(events, firing_id, ((void*)0), 1))
   break;
 }






 if (snap_pushed)
  PopActiveSnapshot();
}
