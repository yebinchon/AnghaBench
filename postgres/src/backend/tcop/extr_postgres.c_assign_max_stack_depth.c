
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long max_stack_depth_bytes ;

void
assign_max_stack_depth(int newval, void *extra)
{
 long newval_bytes = newval * 1024L;

 max_stack_depth_bytes = newval_bytes;
}
