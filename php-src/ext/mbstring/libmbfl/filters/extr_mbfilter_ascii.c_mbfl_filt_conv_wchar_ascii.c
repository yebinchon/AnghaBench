
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

int mbfl_filt_conv_wchar_ascii(int c, mbfl_convert_filter *filter)
{
 if (c >= 0 && c < 0x80) {
  CK((*filter->output_function)(c, filter->data));
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
