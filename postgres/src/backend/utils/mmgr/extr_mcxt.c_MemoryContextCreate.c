
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isReset; char const* name; int allowInCritSection; struct TYPE_5__* nextchild; struct TYPE_5__* firstchild; struct TYPE_5__* prevchild; int * reset_cbs; int * ident; scalar_t__ mem_allocated; struct TYPE_5__* parent; int const* methods; int type; } ;
typedef int NodeTag ;
typedef int MemoryContextMethods ;
typedef TYPE_1__* MemoryContext ;


 int Assert (int) ;
 scalar_t__ CritSectionCount ;
 int VALGRIND_CREATE_MEMPOOL (TYPE_1__*,int ,int) ;

void
MemoryContextCreate(MemoryContext node,
     NodeTag tag,
     const MemoryContextMethods *methods,
     MemoryContext parent,
     const char *name)
{

 Assert(CritSectionCount == 0);


 node->type = tag;
 node->isReset = 1;
 node->methods = methods;
 node->parent = parent;
 node->firstchild = ((void*)0);
 node->mem_allocated = 0;
 node->prevchild = ((void*)0);
 node->name = name;
 node->ident = ((void*)0);
 node->reset_cbs = ((void*)0);


 if (parent)
 {
  node->nextchild = parent->firstchild;
  if (parent->firstchild != ((void*)0))
   parent->firstchild->prevchild = node;
  parent->firstchild = node;

  node->allowInCritSection = parent->allowInCritSection;
 }
 else
 {
  node->nextchild = ((void*)0);
  node->allowInCritSection = 0;
 }

 VALGRIND_CREATE_MEMPOOL(node, 0, 0);
}
