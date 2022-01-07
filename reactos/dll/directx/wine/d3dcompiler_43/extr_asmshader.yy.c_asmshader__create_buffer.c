
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yy_size_t ;
struct yy_buffer_state {int dummy; } ;
typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_buf_size; char* yy_ch_buf; int yy_is_our_buffer; } ;
typedef int FILE ;


 int YY_FATAL_ERROR (char*) ;
 int yy_init_buffer (TYPE_1__*,int *) ;
 scalar_t__ yyalloc (int) ;

YY_BUFFER_STATE yy_create_buffer (FILE * file, int size )
{
 YY_BUFFER_STATE b;

 b = (YY_BUFFER_STATE) yyalloc( sizeof( struct yy_buffer_state ) );
 if ( ! b )
  YY_FATAL_ERROR( "out of dynamic memory in yy_create_buffer()" );

 b->yy_buf_size = size;




 b->yy_ch_buf = (char *) yyalloc( (yy_size_t) (b->yy_buf_size + 2) );
 if ( ! b->yy_ch_buf )
  YY_FATAL_ERROR( "out of dynamic memory in yy_create_buffer()" );

 b->yy_is_our_buffer = 1;

 yy_init_buffer( b, file );

 return b;
}
