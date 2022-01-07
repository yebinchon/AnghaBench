
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int isReset; int * firstchild; } ;
typedef TYPE_1__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextDeleteChildren (TYPE_1__*) ;
 int MemoryContextIsValid (TYPE_1__*) ;
 int MemoryContextResetOnly (TYPE_1__*) ;

void
MemoryContextReset(MemoryContext context)
{
 AssertArg(MemoryContextIsValid(context));


 if (context->firstchild != ((void*)0))
  MemoryContextDeleteChildren(context);


 if (!context->isReset)
  MemoryContextResetOnly(context);
}
