
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_KOI8U ;
 int MBFL_WCSPLANE_MASK ;
 int* koi8u_ucs_table ;
 int koi8u_ucs_table_len ;
 int koi8u_ucs_table_min ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;

int
mbfl_filt_conv_wchar_koi8u(int c, mbfl_convert_filter *filter)
{
 int s, n;

 if (c < 0x80) {
  s = c;
 } else {
  s = -1;
  n = koi8u_ucs_table_len-1;
  while (n >= 0) {
   if (c == koi8u_ucs_table[n]) {
    s = koi8u_ucs_table_min + n;
    break;
   }
   n--;
  }
  if (s <= 0 && (c & ~MBFL_WCSPLANE_MASK) == MBFL_WCSPLANE_KOI8U) {
   s = c & MBFL_WCSPLANE_MASK;
  }
 }

 if (s >= 0) {
  CK((*filter->output_function)(s, filter->data));
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
