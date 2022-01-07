
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ifState ;
struct TYPE_6__ {TYPE_1__* head; } ;
struct TYPE_5__ {int if_state; } ;
typedef TYPE_2__* ConditionalStack ;


 int IFSTATE_NONE ;
 scalar_t__ conditional_stack_empty (TYPE_2__*) ;

ifState
conditional_stack_peek(ConditionalStack cstack)
{
 if (conditional_stack_empty(cstack))
  return IFSTATE_NONE;
 return cstack->head->if_state;
}
