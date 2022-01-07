
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* methods; int * ident; int * firstchild; } ;
struct TYPE_12__ {int (* delete_context ) (TYPE_2__*) ;} ;
typedef TYPE_2__* MemoryContext ;


 int Assert (int) ;
 int AssertArg (int ) ;
 TYPE_2__* CurrentMemoryContext ;
 int MemoryContextCallResetCallbacks (TYPE_2__*) ;
 int MemoryContextDeleteChildren (TYPE_2__*) ;
 int MemoryContextIsValid (TYPE_2__*) ;
 int MemoryContextSetParent (TYPE_2__*,int *) ;
 TYPE_2__* TopMemoryContext ;
 int VALGRIND_DESTROY_MEMPOOL (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void
MemoryContextDelete(MemoryContext context)
{
 AssertArg(MemoryContextIsValid(context));

 Assert(context != TopMemoryContext);

 Assert(context != CurrentMemoryContext);


 if (context->firstchild != ((void*)0))
  MemoryContextDeleteChildren(context);







 MemoryContextCallResetCallbacks(context);






 MemoryContextSetParent(context, ((void*)0));






 context->ident = ((void*)0);

 context->methods->delete_context(context);

 VALGRIND_DESTROY_MEMPOOL(context);
}
