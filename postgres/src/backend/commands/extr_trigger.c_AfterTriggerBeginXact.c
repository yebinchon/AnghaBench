
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * head; } ;
struct TYPE_4__ {int query_depth; scalar_t__ maxquerydepth; scalar_t__ maxtransdepth; int * trans_stack; TYPE_1__ events; int * event_cxt; int * query_stack; int * state; scalar_t__ firing_counter; } ;
typedef scalar_t__ CommandId ;


 int Assert (int) ;
 TYPE_2__ afterTriggers ;

void
AfterTriggerBeginXact(void)
{



 afterTriggers.firing_counter = (CommandId) 1;
 afterTriggers.query_depth = -1;






 Assert(afterTriggers.state == ((void*)0));
 Assert(afterTriggers.query_stack == ((void*)0));
 Assert(afterTriggers.maxquerydepth == 0);
 Assert(afterTriggers.event_cxt == ((void*)0));
 Assert(afterTriggers.events.head == ((void*)0));
 Assert(afterTriggers.trans_stack == ((void*)0));
 Assert(afterTriggers.maxtransdepth == 0);
}
