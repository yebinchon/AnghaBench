
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ callback; void* arg; struct TYPE_4__* next; } ;
typedef TYPE_1__ SubXactCallbackItem ;
typedef scalar_t__ SubXactCallback ;


 TYPE_1__* SubXact_callbacks ;
 int pfree (TYPE_1__*) ;

void
UnregisterSubXactCallback(SubXactCallback callback, void *arg)
{
 SubXactCallbackItem *item;
 SubXactCallbackItem *prev;

 prev = ((void*)0);
 for (item = SubXact_callbacks; item; prev = item, item = item->next)
 {
  if (item->callback == callback && item->arg == arg)
  {
   if (prev)
    prev->next = item->next;
   else
    SubXact_callbacks = item->next;
   pfree(item);
   break;
  }
 }
}
