
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_SUPMAX ;
 int MBFL_WCSPLANE_SUPMIN ;
 int MBFL_WCSPLANE_UCS2MAX ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;

int mbfl_filt_conv_wchar_utf16be(int c, mbfl_convert_filter *filter)
{
 int n;

 if (c >= 0 && c < MBFL_WCSPLANE_UCS2MAX) {
  CK((*filter->output_function)((c >> 8) & 0xff, filter->data));
  CK((*filter->output_function)(c & 0xff, filter->data));
 } else if (c >= MBFL_WCSPLANE_SUPMIN && c < MBFL_WCSPLANE_SUPMAX) {
  n = ((c >> 10) - 0x40) | 0xd800;
  CK((*filter->output_function)((n >> 8) & 0xff, filter->data));
  CK((*filter->output_function)(n & 0xff, filter->data));
  n = (c & 0x3ff) | 0xdc00;
  CK((*filter->output_function)((n >> 8) & 0xff, filter->data));
  CK((*filter->output_function)(n & 0xff, filter->data));
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
