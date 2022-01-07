
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_5__ {scalar_t__ yy_ch_buf; scalar_t__ yy_is_our_buffer; } ;


 TYPE_1__* YY_CURRENT_BUFFER ;
 TYPE_1__* YY_CURRENT_BUFFER_LVALUE ;
 int yyfree (void*) ;

void yy_delete_buffer (YY_BUFFER_STATE b )
{

 if ( ! b )
  return;

 if ( b == YY_CURRENT_BUFFER )
  YY_CURRENT_BUFFER_LVALUE = (YY_BUFFER_STATE) 0;

 if ( b->yy_is_our_buffer )
  yyfree( (void *) b->yy_ch_buf );

 yyfree( (void *) b );
}
