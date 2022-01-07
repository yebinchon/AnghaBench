
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; void* arg; int callback; } ;
typedef TYPE_1__ ResourceReleaseCallbackItem ;
typedef int ResourceReleaseCallback ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 TYPE_1__* ResourceRelease_callbacks ;
 int TopMemoryContext ;

void
RegisterResourceReleaseCallback(ResourceReleaseCallback callback, void *arg)
{
 ResourceReleaseCallbackItem *item;

 item = (ResourceReleaseCallbackItem *)
  MemoryContextAlloc(TopMemoryContext,
         sizeof(ResourceReleaseCallbackItem));
 item->callback = callback;
 item->arg = arg;
 item->next = ResourceRelease_callbacks;
 ResourceRelease_callbacks = item;
}
