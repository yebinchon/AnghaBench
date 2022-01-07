
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_UTF32MAX ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;

int mbfl_filt_conv_wchar_utf32le(int c, mbfl_convert_filter *filter)
{
 if (c >= 0 && c < MBFL_WCSPLANE_UTF32MAX) {
  CK((*filter->output_function)(c & 0xff, filter->data));
  CK((*filter->output_function)((c >> 8) & 0xff, filter->data));
  CK((*filter->output_function)((c >> 16) & 0xff, filter->data));
  CK((*filter->output_function)((c >> 24) & 0xff, filter->data));
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
