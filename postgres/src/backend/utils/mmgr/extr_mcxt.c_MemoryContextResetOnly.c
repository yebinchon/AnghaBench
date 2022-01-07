
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int isReset; TYPE_1__* methods; } ;
struct TYPE_9__ {int (* reset ) (TYPE_2__*) ;} ;
typedef TYPE_2__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextCallResetCallbacks (TYPE_2__*) ;
 int MemoryContextIsValid (TYPE_2__*) ;
 int VALGRIND_CREATE_MEMPOOL (TYPE_2__*,int ,int) ;
 int VALGRIND_DESTROY_MEMPOOL (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void
MemoryContextResetOnly(MemoryContext context)
{
 AssertArg(MemoryContextIsValid(context));


 if (!context->isReset)
 {
  MemoryContextCallResetCallbacks(context);
  context->methods->reset(context);
  context->isReset = 1;
  VALGRIND_DESTROY_MEMPOOL(context);
  VALGRIND_CREATE_MEMPOOL(context, 0, 0);
 }
}
