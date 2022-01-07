
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_8859_1 ;
 int MBFL_WCSPLANE_MASK ;
 int* cp1252_ucs_table ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;

int mbfl_filt_conv_wchar_cp1252(int c, mbfl_convert_filter *filter)
{
 int s=-1, n;

 if (c >= 0x100) {

  s = -1;
  n = 31;
  while (n >= 0) {
   if (c == cp1252_ucs_table[n] && c != 0xfffe) {
    s = 0x80 + n;
    break;
   }
   n--;
  }
  if (s <= 0 && (c & ~MBFL_WCSPLANE_MASK) == MBFL_WCSPLANE_8859_1)
  {
   s = c & MBFL_WCSPLANE_MASK;
  }
 }
 else if (c >= 0 && c < 0x100) {
  s = c;
 }
 if (s >= 0) {
  CK((*filter->output_function)(s, filter->data));
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }
 return c;
}
