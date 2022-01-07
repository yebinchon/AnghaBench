
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_get_bsp () ;
 long max_stack_depth_bytes ;
 int * register_stack_base_ptr ;
 char* stack_base_ptr ;

bool
stack_is_too_deep(void)
{
 char stack_top_loc;
 long stack_depth;




 stack_depth = (long) (stack_base_ptr - &stack_top_loc);




 if (stack_depth < 0)
  stack_depth = -stack_depth;
 if (stack_depth > max_stack_depth_bytes &&
  stack_base_ptr != ((void*)0))
  return 1;
 return 0;
}
