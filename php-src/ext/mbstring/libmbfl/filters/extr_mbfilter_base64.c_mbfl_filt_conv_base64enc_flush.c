
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_BASE64_STS_MIME_HEADER ;
 int* mbfl_base64_table ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;

int mbfl_filt_conv_base64enc_flush(mbfl_convert_filter *filter)
{
 int status, cache, len;

 status = filter->status & 0xff;
 cache = filter->cache;
 len = (filter->status & 0xff00) >> 8;
 filter->status &= ~0xffff;
 filter->cache = 0;

 if (status >= 1) {
  if ((filter->status & MBFL_BASE64_STS_MIME_HEADER) == 0) {
   if (len > 72){
    CK((*filter->output_function)(0x0d, filter->data));
    CK((*filter->output_function)(0x0a, filter->data));
   }
  }
  CK((*filter->output_function)(mbfl_base64_table[(cache >> 18) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_base64_table[(cache >> 12) & 0x3f], filter->data));
  if (status == 1) {
   CK((*filter->output_function)(0x3d, filter->data));
   CK((*filter->output_function)(0x3d, filter->data));
  } else {
   CK((*filter->output_function)(mbfl_base64_table[(cache >> 6) & 0x3f], filter->data));
   CK((*filter->output_function)(0x3d, filter->data));
  }
 }
 return 0;
}
