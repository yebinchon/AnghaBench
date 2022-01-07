
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; void* arg; int callback; } ;
typedef TYPE_1__ SubXactCallbackItem ;
typedef int SubXactCallback ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 TYPE_1__* SubXact_callbacks ;
 int TopMemoryContext ;

void
RegisterSubXactCallback(SubXactCallback callback, void *arg)
{
 SubXactCallbackItem *item;

 item = (SubXactCallbackItem *)
  MemoryContextAlloc(TopMemoryContext, sizeof(SubXactCallbackItem));
 item->callback = callback;
 item->arg = arg;
 item->next = SubXact_callbacks;
 SubXact_callbacks = item;
}
