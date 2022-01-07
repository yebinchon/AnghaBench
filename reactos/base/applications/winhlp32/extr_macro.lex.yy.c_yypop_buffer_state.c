
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ YY_CURRENT_BUFFER ;
 int * YY_CURRENT_BUFFER_LVALUE ;
 scalar_t__ yy_buffer_stack_top ;
 int yy_delete_buffer (scalar_t__) ;
 int yy_did_buffer_switch_on_eof ;
 int yy_load_buffer_state () ;

void yypop_buffer_state (void)
{
     if (!YY_CURRENT_BUFFER)
  return;

 yy_delete_buffer(YY_CURRENT_BUFFER );
 YY_CURRENT_BUFFER_LVALUE = ((void*)0);
 if ((yy_buffer_stack_top) > 0)
  --(yy_buffer_stack_top);

 if (YY_CURRENT_BUFFER) {
  yy_load_buffer_state( );
  (yy_did_buffer_switch_on_eof) = 1;
 }
}
