
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; int * firstchild; } ;
struct TYPE_6__ {int (* is_empty ) (TYPE_2__*) ;} ;
typedef TYPE_2__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextIsValid (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

bool
MemoryContextIsEmpty(MemoryContext context)
{
 AssertArg(MemoryContextIsValid(context));





 if (context->firstchild != ((void*)0))
  return 0;

 return context->methods->is_empty(context);
}
