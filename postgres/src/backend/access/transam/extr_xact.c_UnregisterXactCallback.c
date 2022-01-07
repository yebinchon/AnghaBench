
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ callback; void* arg; struct TYPE_4__* next; } ;
typedef TYPE_1__ XactCallbackItem ;
typedef scalar_t__ XactCallback ;


 TYPE_1__* Xact_callbacks ;
 int pfree (TYPE_1__*) ;

void
UnregisterXactCallback(XactCallback callback, void *arg)
{
 XactCallbackItem *item;
 XactCallbackItem *prev;

 prev = ((void*)0);
 for (item = Xact_callbacks; item; prev = item, item = item->next)
 {
  if (item->callback == callback && item->arg == arg)
  {
   if (prev)
    prev->next = item->next;
   else
    Xact_callbacks = item->next;
   pfree(item);
   break;
  }
 }
}
