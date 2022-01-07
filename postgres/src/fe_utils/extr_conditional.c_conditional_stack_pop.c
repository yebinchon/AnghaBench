
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* head; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ IfStackElem ;
typedef TYPE_2__* ConditionalStack ;


 int free (TYPE_1__*) ;

bool
conditional_stack_pop(ConditionalStack cstack)
{
 IfStackElem *p = cstack->head;

 if (!p)
  return 0;
 cstack->head = cstack->head->next;
 free(p);
 return 1;
}
