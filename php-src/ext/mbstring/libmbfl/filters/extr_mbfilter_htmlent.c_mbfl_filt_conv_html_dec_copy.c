
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int opaque; } ;
typedef TYPE_1__ mbfl_convert_filter ;


 scalar_t__ html_enc_buffer_size ;
 int mbfl_malloc (scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;

void mbfl_filt_conv_html_dec_copy(mbfl_convert_filter *src, mbfl_convert_filter *dest)
{
 *dest = *src;
 dest->opaque = mbfl_malloc(html_enc_buffer_size+1);
 memcpy(dest->opaque, src->opaque, html_enc_buffer_size+1);
}
