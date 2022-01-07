
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* replace_stack ;
 size_t replace_stack_nr ;

__attribute__((used)) static int
replace_pop()
{
    if (replace_stack_nr == 0)
 return -1;
    return (int)replace_stack[--replace_stack_nr];
}
