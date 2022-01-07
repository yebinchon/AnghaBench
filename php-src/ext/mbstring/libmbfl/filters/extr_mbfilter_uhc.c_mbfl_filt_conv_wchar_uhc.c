
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_MASK ;
 int MBFL_WCSPLANE_UHC ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int* ucs_a1_uhc_table ;
 int ucs_a1_uhc_table_max ;
 int ucs_a1_uhc_table_min ;
 int* ucs_a2_uhc_table ;
 int ucs_a2_uhc_table_max ;
 int ucs_a2_uhc_table_min ;
 int* ucs_a3_uhc_table ;
 int ucs_a3_uhc_table_max ;
 int ucs_a3_uhc_table_min ;
 int* ucs_i_uhc_table ;
 int ucs_i_uhc_table_max ;
 int ucs_i_uhc_table_min ;
 int* ucs_r1_uhc_table ;
 int ucs_r1_uhc_table_max ;
 int ucs_r1_uhc_table_min ;
 int* ucs_r2_uhc_table ;
 int ucs_r2_uhc_table_max ;
 int ucs_r2_uhc_table_min ;
 int* ucs_s_uhc_table ;
 int ucs_s_uhc_table_max ;
 int ucs_s_uhc_table_min ;

int
mbfl_filt_conv_wchar_uhc(int c, mbfl_convert_filter *filter)
{
 int c1, s;

 s = 0;
 if (c >= ucs_a1_uhc_table_min && c < ucs_a1_uhc_table_max) {
  s = ucs_a1_uhc_table[c - ucs_a1_uhc_table_min];
 } else if (c >= ucs_a2_uhc_table_min && c < ucs_a2_uhc_table_max) {
  s = ucs_a2_uhc_table[c - ucs_a2_uhc_table_min];
 } else if (c >= ucs_a3_uhc_table_min && c < ucs_a3_uhc_table_max) {
  s = ucs_a3_uhc_table[c - ucs_a3_uhc_table_min];
 } else if (c >= ucs_i_uhc_table_min && c < ucs_i_uhc_table_max) {
  s = ucs_i_uhc_table[c - ucs_i_uhc_table_min];
 } else if (c >= ucs_s_uhc_table_min && c < ucs_s_uhc_table_max) {
  s = ucs_s_uhc_table[c - ucs_s_uhc_table_min];
 } else if (c >= ucs_r1_uhc_table_min && c < ucs_r1_uhc_table_max) {
  s = ucs_r1_uhc_table[c - ucs_r1_uhc_table_min];
 } else if (c >= ucs_r2_uhc_table_min && c < ucs_r2_uhc_table_max) {
  s = ucs_r2_uhc_table[c - ucs_r2_uhc_table_min];
 }
 if (s <= 0) {
  c1 = c & ~MBFL_WCSPLANE_MASK;
  if (c1 == MBFL_WCSPLANE_UHC) {
   s = c & MBFL_WCSPLANE_MASK;
  }
  if (c == 0) {
   s = 0;
  } else if (s <= 0) {
   s = -1;
  }
 }
 if (s >= 0) {
  if (s < 0x80) {
   CK((*filter->output_function)(s, filter->data));
  } else {
   CK((*filter->output_function)((s >> 8) & 0xff, filter->data));
   CK((*filter->output_function)(s & 0xff, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
