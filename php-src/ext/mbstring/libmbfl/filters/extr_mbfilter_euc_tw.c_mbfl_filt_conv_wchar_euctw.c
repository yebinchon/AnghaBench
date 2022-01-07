
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_CNS11643 ;
 int MBFL_WCSPLANE_MASK ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int* ucs_a1_cns11643_table ;
 int ucs_a1_cns11643_table_max ;
 int ucs_a1_cns11643_table_min ;
 int* ucs_a2_cns11643_table ;
 int ucs_a2_cns11643_table_max ;
 int ucs_a2_cns11643_table_min ;
 int* ucs_a3_cns11643_table ;
 int ucs_a3_cns11643_table_max ;
 int ucs_a3_cns11643_table_min ;
 int* ucs_i_cns11643_table ;
 int ucs_i_cns11643_table_max ;
 int ucs_i_cns11643_table_min ;
 int* ucs_r_cns11643_table ;
 int ucs_r_cns11643_table_max ;
 int ucs_r_cns11643_table_min ;

int
mbfl_filt_conv_wchar_euctw(int c, mbfl_convert_filter *filter)
{
 int c1, s, plane;

 s = 0;
 if (c >= ucs_a1_cns11643_table_min && c < ucs_a1_cns11643_table_max) {
  s = ucs_a1_cns11643_table[c - ucs_a1_cns11643_table_min];
 } else if (c >= ucs_a2_cns11643_table_min && c < ucs_a2_cns11643_table_max) {
  s = ucs_a2_cns11643_table[c - ucs_a2_cns11643_table_min];
 } else if (c >= ucs_a3_cns11643_table_min && c < ucs_a3_cns11643_table_max) {
  s = ucs_a3_cns11643_table[c - ucs_a3_cns11643_table_min];
 } else if (c >= ucs_i_cns11643_table_min && c < ucs_i_cns11643_table_max) {
  s = ucs_i_cns11643_table[c - ucs_i_cns11643_table_min];
 } else if (c >= ucs_r_cns11643_table_min && c < ucs_r_cns11643_table_max) {
  s = ucs_r_cns11643_table[c - ucs_r_cns11643_table_min];
 }
 if (s <= 0) {
  c1 = c & ~MBFL_WCSPLANE_MASK;
  if (c1 == MBFL_WCSPLANE_CNS11643) {
   s = c & MBFL_WCSPLANE_MASK;
  }
  if (c == 0) {
   s = 0;
  } else if (s <= 0) {
   s = -1;
  }
 }
 if (s >= 0) {
  plane = (s & 0x1f0000) >> 16;
  if (plane <= 1){
   if (s < 0x80) {
    CK((*filter->output_function)(s, filter->data));
   } else {
    s = (s & 0xffff) | 0x8080;
    CK((*filter->output_function)((s >> 8) & 0xff, filter->data));
    CK((*filter->output_function)(s & 0xff, filter->data));
   }
  } else {
   s = (0x8ea00000 + (plane << 16)) | ((s & 0xffff) | 0x8080);
   CK((*filter->output_function)(0x8e , filter->data));
   CK((*filter->output_function)((s >> 16) & 0xff, filter->data));
   CK((*filter->output_function)((s >> 8) & 0xff, filter->data));
   CK((*filter->output_function)(s & 0xff, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }
 return c;
}
