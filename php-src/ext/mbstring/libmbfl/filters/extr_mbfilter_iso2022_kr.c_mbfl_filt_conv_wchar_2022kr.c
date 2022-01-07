
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_KSC5601 ;
 int MBFL_WCSPLANE_MASK ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;
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
mbfl_filt_conv_wchar_2022kr(int c, mbfl_convert_filter *filter)
{
 int c1, c2, s;

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

 c1 = (s >> 8) & 0xff;
 c2 = s & 0xff;

 if (c1 < 0xa1 || c2 < 0xa1){
  s = c;
 }
 if (s & 0x8000) {
  s -= 0x8080;
 }

 if (s <= 0) {
  c1 = c & ~MBFL_WCSPLANE_MASK;
  if (c1 == MBFL_WCSPLANE_KSC5601) {
   s = c & MBFL_WCSPLANE_MASK;
  }
  if (c == 0) {
   s = 0;
  } else if (s <= 0) {
   s = -1;
  }
 } else if ((s >= 0x80 && s < 0x2121) || (s > 0x8080)) {
  s = -1;
 }
 if (s >= 0) {
  if (s < 0x80 && s > 0) {
   if ((filter->status & 0x10) != 0) {
    CK((*filter->output_function)(0x0f, filter->data));
    filter->status &= ~0x10;
   }
   CK((*filter->output_function)(s, filter->data));
  } else {
   if ( (filter->status & 0x100) == 0) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x24, filter->data));
    CK((*filter->output_function)(0x29, filter->data));
    CK((*filter->output_function)(0x43, filter->data));
    filter->status |= 0x100;
   }
   if ((filter->status & 0x10) == 0) {
    CK((*filter->output_function)(0x0e, filter->data));
    filter->status |= 0x10;
   }
   CK((*filter->output_function)((s >> 8) & 0xff, filter->data));
   CK((*filter->output_function)(s & 0xff, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
