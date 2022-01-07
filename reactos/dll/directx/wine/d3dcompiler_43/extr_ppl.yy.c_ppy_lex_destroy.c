
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ YY_CURRENT_BUFFER ;
 int * YY_CURRENT_BUFFER_LVALUE ;
 int * yy_buffer_stack ;
 int yy_delete_buffer (scalar_t__) ;
 int yy_init_globals () ;
 int * yy_start_stack ;
 int yyfree (int *) ;
 int yypop_buffer_state () ;

int yylex_destroy (void)
{


 while(YY_CURRENT_BUFFER){
  yy_delete_buffer( YY_CURRENT_BUFFER );
  YY_CURRENT_BUFFER_LVALUE = ((void*)0);
  yypop_buffer_state();
 }


 yyfree((yy_buffer_stack) );
 (yy_buffer_stack) = ((void*)0);


        yyfree( (yy_start_stack) );
        (yy_start_stack) = ((void*)0);



    yy_init_globals( );

    return 0;
}
