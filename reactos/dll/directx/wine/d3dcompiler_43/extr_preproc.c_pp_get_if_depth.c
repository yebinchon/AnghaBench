
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int if_stack_idx ;

int pp_get_if_depth(void)
{
 return if_stack_idx;
}
