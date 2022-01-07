
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; void* arg; int callback; } ;
typedef TYPE_1__ XactCallbackItem ;
typedef int XactCallback ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 int TopMemoryContext ;
 TYPE_1__* Xact_callbacks ;

void
RegisterXactCallback(XactCallback callback, void *arg)
{
 XactCallbackItem *item;

 item = (XactCallbackItem *)
  MemoryContextAlloc(TopMemoryContext, sizeof(XactCallbackItem));
 item->callback = callback;
 item->arg = arg;
 item->next = Xact_callbacks;
 Xact_callbacks = item;
}
