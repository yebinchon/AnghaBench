
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ callback; void* arg; struct TYPE_4__* next; } ;
typedef TYPE_1__ ResourceReleaseCallbackItem ;
typedef scalar_t__ ResourceReleaseCallback ;


 TYPE_1__* ResourceRelease_callbacks ;
 int pfree (TYPE_1__*) ;

void
UnregisterResourceReleaseCallback(ResourceReleaseCallback callback, void *arg)
{
 ResourceReleaseCallbackItem *item;
 ResourceReleaseCallbackItem *prev;

 prev = ((void*)0);
 for (item = ResourceRelease_callbacks; item; prev = item, item = item->next)
 {
  if (item->callback == callback && item->arg == arg)
  {
   if (prev)
    prev->next = item->next;
   else
    ResourceRelease_callbacks = item->next;
   pfree(item);
   break;
  }
 }
}
