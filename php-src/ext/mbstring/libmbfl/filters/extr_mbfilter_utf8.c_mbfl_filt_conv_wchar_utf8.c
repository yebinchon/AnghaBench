
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub10 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int mbfl_filt_conv_wchar_utf8(int c, mbfl_convert_filter *filter)
{
 if (c >= 0 && c < 0x110000) {
  if (c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else if (c < 0x800) {
   CK((*filter->output_function)(((c >> 6) & 0x1f) | 0xc0, filter->data));
   CK((*filter->output_function)((c & 0x3f) | 0x80, filter->data));
  } else if (c < 0x10000) {
   CK((*filter->output_function)(((c >> 12) & 0x0f) | 0xe0, filter->data));
   CK((*filter->output_function)(((c >> 6) & 0x3f) | 0x80, filter->data));
   CK((*filter->output_function)((c & 0x3f) | 0x80, filter->data));
  } else {
   CK((*filter->output_function)(((c >> 18) & 0x07) | 0xf0, filter->data));
   CK((*filter->output_function)(((c >> 12) & 0x3f) | 0x80, filter->data));
   CK((*filter->output_function)(((c >> 6) & 0x3f) | 0x80, filter->data));
   CK((*filter->output_function)((c & 0x3f) | 0x80, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
