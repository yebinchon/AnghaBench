
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int* cp1252_ucs_table ;
 int stub1 (int,int ) ;

int mbfl_filt_conv_cp1252_wchar(int c, mbfl_convert_filter *filter)
{
 int s;

 if (c >= 0x80 && c < 0xa0) {
  s = cp1252_ucs_table[c - 0x80];
 } else {
  s = c;
 }

 CK((*filter->output_function)(s, filter->data));

 return c;
}
