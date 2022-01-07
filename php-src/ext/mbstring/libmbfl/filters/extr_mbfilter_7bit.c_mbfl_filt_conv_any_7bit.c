
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int stub1 (int,int ) ;

int mbfl_filt_conv_any_7bit(int c, mbfl_convert_filter *filter)
{
 if (c >= 0 && c < 0x80) {
  CK((*filter->output_function)(c, filter->data));
 }
 return c;
}
