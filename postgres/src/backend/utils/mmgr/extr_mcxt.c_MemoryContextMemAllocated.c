
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nextchild; struct TYPE_4__* firstchild; scalar_t__ mem_allocated; } ;
typedef scalar_t__ Size ;
typedef TYPE_1__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextIsValid (TYPE_1__*) ;

Size
MemoryContextMemAllocated(MemoryContext context, bool recurse)
{
 Size total = context->mem_allocated;

 AssertArg(MemoryContextIsValid(context));

 if (recurse)
 {
  MemoryContext child = context->firstchild;

  for (child = context->firstchild;
    child != ((void*)0);
    child = child->nextchild)
   total += MemoryContextMemAllocated(child, 1);
 }

 return total;
}
