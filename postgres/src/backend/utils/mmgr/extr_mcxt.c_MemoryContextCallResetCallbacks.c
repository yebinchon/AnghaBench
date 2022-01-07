
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* reset_cbs; } ;
struct TYPE_4__ {int arg; int (* func ) (int ) ;struct TYPE_4__* next; } ;
typedef TYPE_1__ MemoryContextCallback ;
typedef TYPE_2__* MemoryContext ;


 int stub1 (int ) ;

__attribute__((used)) static void
MemoryContextCallResetCallbacks(MemoryContext context)
{
 MemoryContextCallback *cb;






 while ((cb = context->reset_cbs) != ((void*)0))
 {
  context->reset_cbs = cb->next;
  cb->func(cb->arg);
 }
}
