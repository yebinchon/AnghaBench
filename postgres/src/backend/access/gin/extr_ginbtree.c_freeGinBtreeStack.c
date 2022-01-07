
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer; struct TYPE_4__* parent; } ;
typedef TYPE_1__ GinBtreeStack ;


 scalar_t__ InvalidBuffer ;
 int ReleaseBuffer (scalar_t__) ;
 int pfree (TYPE_1__*) ;

void
freeGinBtreeStack(GinBtreeStack *stack)
{
 while (stack)
 {
  GinBtreeStack *tmp = stack->parent;

  if (stack->buffer != InvalidBuffer)
   ReleaseBuffer(stack->buffer);

  pfree(stack);
  stack = tmp;
 }
}
