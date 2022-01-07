
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int isReset; TYPE_1__* reset_cbs; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ MemoryContextCallback ;
typedef TYPE_2__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextIsValid (TYPE_2__*) ;

void
MemoryContextRegisterResetCallback(MemoryContext context,
           MemoryContextCallback *cb)
{
 AssertArg(MemoryContextIsValid(context));


 cb->next = context->reset_cbs;
 context->reset_cbs = cb;

 context->isReset = 0;
}
