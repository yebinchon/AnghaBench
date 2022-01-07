
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEGIN (int ) ;
 int YY_FATAL_ERROR (char*) ;
 int * yy_start_stack ;
 scalar_t__ yy_start_stack_ptr ;

__attribute__((used)) static void yy_pop_state (void)
{
     if ( --(yy_start_stack_ptr) < 0 )
  YY_FATAL_ERROR( "start-condition stack underflow" );

 BEGIN((yy_start_stack)[(yy_start_stack_ptr)]);
}
