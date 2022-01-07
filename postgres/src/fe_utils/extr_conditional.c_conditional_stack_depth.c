
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* head; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ IfStackElem ;
typedef TYPE_2__* ConditionalStack ;



int
conditional_stack_depth(ConditionalStack cstack)
{
 if (cstack == ((void*)0))
  return -1;
 else
 {
  IfStackElem *p = cstack->head;
  int depth = 0;

  while (p != ((void*)0))
  {
   depth++;
   p = p->next;
  }
  return depth;
 }
}
