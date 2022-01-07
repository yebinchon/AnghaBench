
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_MASK ;
 int MBFL_WCSPLANE_WINCP936 ;
 int** mbfl_cp936_pua_tbl ;
 int mbfl_cp936_pua_tbl_max ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int* ucs_a1_cp936_table ;
 int ucs_a1_cp936_table_max ;
 int ucs_a1_cp936_table_min ;
 int* ucs_a2_cp936_table ;
 int ucs_a2_cp936_table_max ;
 int ucs_a2_cp936_table_min ;
 int* ucs_a3_cp936_table ;
 int ucs_a3_cp936_table_max ;
 int ucs_a3_cp936_table_min ;
 int* ucs_cf_cp936_table ;
 int ucs_cf_cp936_table_max ;
 int ucs_cf_cp936_table_min ;
 int* ucs_ci_cp936_table ;
 int ucs_ci_cp936_table_max ;
 int ucs_ci_cp936_table_min ;
 int ucs_hff_cp936_table_max ;
 int ucs_hff_cp936_table_min ;
 int* ucs_hff_s_cp936_table ;
 int* ucs_i_cp936_table ;
 int ucs_i_cp936_table_max ;
 int ucs_i_cp936_table_min ;
 int* ucs_sfv_cp936_table ;
 int ucs_sfv_cp936_table_max ;
 int ucs_sfv_cp936_table_min ;

int
mbfl_filt_conv_wchar_cp936(int c, mbfl_convert_filter *filter)
{
 int k, k1, k2;
 int c1, s = 0;

 if (c >= ucs_a1_cp936_table_min && c < ucs_a1_cp936_table_max) {

  s = ucs_a1_cp936_table[c - ucs_a1_cp936_table_min];
 } else if (c >= ucs_a2_cp936_table_min && c < ucs_a2_cp936_table_max) {

  if (c == 0x203e) {
   s = 0xa3fe;
  } else if (c == 0x2218) {
   s = 0xa1e3;
  } else if (c == 0x223c) {
   s = 0xa1ab;
  } else {
   s = ucs_a2_cp936_table[c - ucs_a2_cp936_table_min];
  }
 } else if (c >= ucs_a3_cp936_table_min && c < ucs_a3_cp936_table_max) {

  s = ucs_a3_cp936_table[c - ucs_a3_cp936_table_min];
 } else if (c >= ucs_i_cp936_table_min && c < ucs_i_cp936_table_max) {

  s = ucs_i_cp936_table[c - ucs_i_cp936_table_min];
 } else if (c >= 0xe000 && c <= 0xe864) {
  if (c < 0xe766) {
   if (c < 0xe4c6) {
    c1 = c - 0xe000;
    s = (c1 % 94) + 0xa1; c1 /= 94;
    s |= (c1 < 0x06 ? c1 + 0xaa : c1 + 0xf2) << 8;
   } else {
    c1 = c - 0xe4c6;
    s = ((c1 / 96) + 0xa1) << 8; c1 %= 96;
    s |= c1 + (c1 >= 0x3f ? 0x41 : 0x40);
   }
  } else {

   k1 = 0; k2 = mbfl_cp936_pua_tbl_max;
   while (k1 < k2) {
    k = (k1 + k2) >> 1;
    if (c < mbfl_cp936_pua_tbl[k][0]) {
     k2 = k;
    } else if (c > mbfl_cp936_pua_tbl[k][1]) {
     k1 = k + 1;
    } else {
     s = c - mbfl_cp936_pua_tbl[k][0] + mbfl_cp936_pua_tbl[k][2];
     break;
    }
   }
  }
 } else if (c == 0xf8f5) {
  s = 0xff;
 } else if (c >= ucs_ci_cp936_table_min && c < ucs_ci_cp936_table_max) {

  s = ucs_ci_cp936_table[c - ucs_ci_cp936_table_min];
 } else if (c >= ucs_cf_cp936_table_min && c < ucs_cf_cp936_table_max) {
  s = ucs_cf_cp936_table[c - ucs_cf_cp936_table_min];
 } else if (c >= ucs_sfv_cp936_table_min && c < ucs_sfv_cp936_table_max) {
  s = ucs_sfv_cp936_table[c - ucs_sfv_cp936_table_min];
 } else if (c >= ucs_hff_cp936_table_min && c < ucs_hff_cp936_table_max) {

  if (c == 0xff04) {
   s = 0xa1e7;
  } else if (c == 0xff5e) {
   s = 0xa1ab;
  } else if (c >= 0xff01 && c <= 0xff5d) {
   s = c - 0xff01 + 0xa3a1;
  } else if (c >= 0xffe0 && c <= 0xffe5) {
   s = ucs_hff_s_cp936_table[c-0xffe0];
  }
 }
 if (s <= 0) {
  c1 = c & ~MBFL_WCSPLANE_MASK;
  if (c1 == MBFL_WCSPLANE_WINCP936) {
   s = c & MBFL_WCSPLANE_MASK;
  }
  if (c == 0) {
   s = 0;
  } else if (s <= 0) {
   s = -1;
  }
 }
 if (s >= 0) {
  if (s <= 0x80 || s == 0xff) {
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
