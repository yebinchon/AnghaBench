
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* nextchild; struct TYPE_5__* prevchild; struct TYPE_5__* parent; struct TYPE_5__* firstchild; } ;
typedef TYPE_1__* MemoryContext ;


 int Assert (int) ;
 int AssertArg (int) ;
 int MemoryContextIsValid (TYPE_1__*) ;

void
MemoryContextSetParent(MemoryContext context, MemoryContext new_parent)
{
 AssertArg(MemoryContextIsValid(context));
 AssertArg(context != new_parent);


 if (new_parent == context->parent)
  return;


 if (context->parent)
 {
  MemoryContext parent = context->parent;

  if (context->prevchild != ((void*)0))
   context->prevchild->nextchild = context->nextchild;
  else
  {
   Assert(parent->firstchild == context);
   parent->firstchild = context->nextchild;
  }

  if (context->nextchild != ((void*)0))
   context->nextchild->prevchild = context->prevchild;
 }


 if (new_parent)
 {
  AssertArg(MemoryContextIsValid(new_parent));
  context->parent = new_parent;
  context->prevchild = ((void*)0);
  context->nextchild = new_parent->firstchild;
  if (new_parent->firstchild != ((void*)0))
   new_parent->firstchild->prevchild = context;
  new_parent->firstchild = context;
 }
 else
 {
  context->parent = ((void*)0);
  context->prevchild = ((void*)0);
  context->nextchild = ((void*)0);
 }
}
