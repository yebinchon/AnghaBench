
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

int mbfl_filt_conv_base64enc(int c, mbfl_convert_filter *filter)
{
 int n;

 n = (filter->status & 0xff);
 if (n == 0) {
  filter->status++;
  filter->cache = (c & 0xff) << 16;
 } else if (n == 1) {
  filter->status++;
  filter->cache |= (c & 0xff) << 8;
 } else {
  filter->status &= ~0xff;
  if ((filter->status & MBFL_BASE64_STS_MIME_HEADER) == 0) {
   n = (filter->status & 0xff00) >> 8;
   if (n > 72) {
    CK((*filter->output_function)(0x0d, filter->data));
    CK((*filter->output_function)(0x0a, filter->data));
    filter->status &= ~0xff00;
   }
   filter->status += 0x400;
  }
  n = filter->cache | (c & 0xff);
  CK((*filter->output_function)(mbfl_base64_table[(n >> 18) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_base64_table[(n >> 12) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_base64_table[(n >> 6) & 0x3f], filter->data));
  CK((*filter->output_function)(mbfl_base64_table[n & 0x3f], filter->data));
 }

 return c;
}
