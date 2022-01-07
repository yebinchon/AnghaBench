
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ifState ;
typedef int ConditionalStack ;


 scalar_t__ IFSTATE_ELSE_TRUE ;
 scalar_t__ IFSTATE_NONE ;
 scalar_t__ IFSTATE_TRUE ;
 scalar_t__ conditional_stack_peek (int ) ;

bool
conditional_active(ConditionalStack cstack)
{
 ifState s = conditional_stack_peek(cstack);

 return s == IFSTATE_NONE || s == IFSTATE_TRUE || s == IFSTATE_ELSE_TRUE;
}
