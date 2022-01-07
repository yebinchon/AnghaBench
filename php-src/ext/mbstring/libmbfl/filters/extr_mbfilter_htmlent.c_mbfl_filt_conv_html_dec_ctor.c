
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opaque; scalar_t__ status; } ;
typedef TYPE_1__ mbfl_convert_filter ;


 scalar_t__ html_enc_buffer_size ;
 int mbfl_malloc (scalar_t__) ;

void mbfl_filt_conv_html_dec_ctor(mbfl_convert_filter *filter)
{
 filter->status = 0;
 filter->opaque = mbfl_malloc(html_enc_buffer_size+1);
}
