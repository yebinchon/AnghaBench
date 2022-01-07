
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int data; int (* output_function ) (int const,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_JIS0208 ;
 int MBFL_WCSPLANE_MASK ;
 int mbfl_filt_conv_wchar_cp50221 (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int const,int ) ;
 int stub5 (int const,int ) ;

int
mbfl_filt_conv_wchar_cp50220raw(int c, mbfl_convert_filter *filter)
{
 if (c & MBFL_WCSPLANE_JIS0208) {
  const int s = c & MBFL_WCSPLANE_MASK;

  if ((filter->status & 0xff00) != 0x200) {
   CK((*filter->output_function)(0x1b, filter->data));
   CK((*filter->output_function)(0x24, filter->data));
   CK((*filter->output_function)(0x42, filter->data));
   filter->status = 0x200;
  }
  CK((*filter->output_function)((s >> 8) & 0x7f, filter->data));
  CK((*filter->output_function)(s & 0x7f, filter->data));
  return c;
 } else {
  return mbfl_filt_conv_wchar_cp50221(c, filter);
 }
}
