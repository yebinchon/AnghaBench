
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * firstchild; } ;
typedef TYPE_1__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextDelete (int *) ;
 int MemoryContextIsValid (TYPE_1__*) ;

void
MemoryContextDeleteChildren(MemoryContext context)
{
 AssertArg(MemoryContextIsValid(context));





 while (context->firstchild != ((void*)0))
  MemoryContextDelete(context->firstchild);
}
