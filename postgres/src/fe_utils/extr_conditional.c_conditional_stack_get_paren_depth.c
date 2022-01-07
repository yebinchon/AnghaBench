
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* head; } ;
struct TYPE_5__ {int paren_depth; } ;
typedef TYPE_2__* ConditionalStack ;


 scalar_t__ conditional_stack_empty (TYPE_2__*) ;

int
conditional_stack_get_paren_depth(ConditionalStack cstack)
{
 if (conditional_stack_empty(cstack))
  return -1;
 return cstack->head->paren_depth;
}
