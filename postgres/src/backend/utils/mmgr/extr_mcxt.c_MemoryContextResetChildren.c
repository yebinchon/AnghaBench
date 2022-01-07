
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* nextchild; struct TYPE_5__* firstchild; } ;
typedef TYPE_1__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextIsValid (TYPE_1__*) ;
 int MemoryContextResetOnly (TYPE_1__*) ;

void
MemoryContextResetChildren(MemoryContext context)
{
 MemoryContext child;

 AssertArg(MemoryContextIsValid(context));

 for (child = context->firstchild; child != ((void*)0); child = child->nextchild)
 {
  MemoryContextResetChildren(child);
  MemoryContextResetOnly(child);
 }
}
