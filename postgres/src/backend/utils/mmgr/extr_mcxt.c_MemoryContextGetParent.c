
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; } ;
typedef TYPE_1__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextIsValid (TYPE_1__*) ;

MemoryContext
MemoryContextGetParent(MemoryContext context)
{
 AssertArg(MemoryContextIsValid(context));

 return context->parent;
}
