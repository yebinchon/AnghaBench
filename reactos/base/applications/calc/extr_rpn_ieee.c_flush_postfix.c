
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ last_operator; scalar_t__ prev_operator; } ;


 TYPE_1__ calc ;
 int is_stack_empty () ;
 int pop () ;

void flush_postfix(void)
{
    while (!is_stack_empty())
        pop();

    calc.prev_operator =
    calc.last_operator = 0;
}
