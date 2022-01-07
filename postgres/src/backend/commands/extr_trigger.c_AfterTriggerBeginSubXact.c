
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int maxtransdepth; int firing_counter; TYPE_1__* trans_stack; int query_depth; int events; } ;
struct TYPE_4__ {int firing_counter; int query_depth; int events; int * state; } ;
typedef TYPE_1__ AfterTriggersTransData ;


 int GetCurrentTransactionNestLevel () ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int TopTransactionContext ;
 TYPE_3__ afterTriggers ;
 scalar_t__ repalloc (TYPE_1__*,int) ;

void
AfterTriggerBeginSubXact(void)
{
 int my_level = GetCurrentTransactionNestLevel();






 while (my_level >= afterTriggers.maxtransdepth)
 {
  if (afterTriggers.maxtransdepth == 0)
  {

   afterTriggers.trans_stack = (AfterTriggersTransData *)
    MemoryContextAlloc(TopTransactionContext,
           8 * sizeof(AfterTriggersTransData));
   afterTriggers.maxtransdepth = 8;
  }
  else
  {

   int new_alloc = afterTriggers.maxtransdepth * 2;

   afterTriggers.trans_stack = (AfterTriggersTransData *)
    repalloc(afterTriggers.trans_stack,
       new_alloc * sizeof(AfterTriggersTransData));
   afterTriggers.maxtransdepth = new_alloc;
  }
 }






 afterTriggers.trans_stack[my_level].state = ((void*)0);
 afterTriggers.trans_stack[my_level].events = afterTriggers.events;
 afterTriggers.trans_stack[my_level].query_depth = afterTriggers.query_depth;
 afterTriggers.trans_stack[my_level].firing_counter = afterTriggers.firing_counter;
}
