
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


 scalar_t__ conditional_stack_empty (TYPE_2__*) ;

bool
conditional_stack_poke(ConditionalStack cstack, ifState new_state)
{
 if (conditional_stack_empty(cstack))
  return 0;
 cstack->head->if_state = new_state;
 return 1;
}
