
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ErrorContext ;
 int MemoryContextResetAndDeleteChildren (int ) ;
 int errordata_stack_depth ;
 scalar_t__ recursion_depth ;

void
FlushErrorState(void)
{






 errordata_stack_depth = -1;
 recursion_depth = 0;

 MemoryContextResetAndDeleteChildren(ErrorContext);
}
