
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ gc_stack ;


 int efree (TYPE_1__*) ;

__attribute__((used)) static void gc_stack_free(gc_stack *stack)
{
 gc_stack *p = stack->next;

 while (p) {
  stack = p->next;
  efree(p);
  p = stack;
 }
}
