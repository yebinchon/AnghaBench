
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ConditionalStack ;


 scalar_t__ conditional_stack_pop (int ) ;
 int free (int ) ;

void
conditional_stack_destroy(ConditionalStack cstack)
{
 while (conditional_stack_pop(cstack))
  continue;
 free(cstack);
}
