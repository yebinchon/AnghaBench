
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int* ucs_a1_cp936_table ;
 int ucs_a1_cp936_table_max ;
 int ucs_a1_cp936_table_min ;
 int* ucs_a2_cp936_table ;
 int ucs_a2_cp936_table_max ;
 int ucs_a2_cp936_table_min ;
 int* ucs_a3_cp936_table ;
 int ucs_a3_cp936_table_max ;
 int ucs_a3_cp936_table_min ;
 int ucs_hff_cp936_table_max ;
 int ucs_hff_cp936_table_min ;
 int* ucs_hff_s_cp936_table ;
 int* ucs_i_cp936_table ;
 int ucs_i_cp936_table_max ;
 int ucs_i_cp936_table_min ;

int
mbfl_filt_conv_wchar_hz(int c, mbfl_convert_filter *filter)
{
 int s;

 s = 0;
 if (c >= ucs_a1_cp936_table_min && c < ucs_a1_cp936_table_max) {
  s = ucs_a1_cp936_table[c - ucs_a1_cp936_table_min];
 } else if (c >= ucs_a2_cp936_table_min && c < ucs_a2_cp936_table_max) {
  s = ucs_a2_cp936_table[c - ucs_a2_cp936_table_min];
 } else if (c >= ucs_a3_cp936_table_min && c < ucs_a3_cp936_table_max) {
  s = ucs_a3_cp936_table[c - ucs_a3_cp936_table_min];
 } else if (c >= ucs_i_cp936_table_min && c < ucs_i_cp936_table_max) {
  s = ucs_i_cp936_table[c - ucs_i_cp936_table_min];
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
 if (s & 0x8000) {
  s -= 0x8080;
 }

 if (s <= 0) {
  if (c == 0) {
   s = 0;
  } else if (s <= 0) {
   s = -1;
  }
 } else if ((s >= 0x80 && s < 0x2121) || (s > 0x8080)) {
  s = -1;
 }
 if (s >= 0) {
  if (s < 0x80) {
   if ((filter->status & 0xff00) != 0) {
    CK((*filter->output_function)(0x7e, filter->data));
    CK((*filter->output_function)(0x7d, filter->data));
   }
   filter->status = 0;
   if (s == 0x7e){
    CK((*filter->output_function)(0x7e, filter->data));
   }
   CK((*filter->output_function)(s, filter->data));
  } else {
   if ((filter->status & 0xff00) != 0x200) {
    CK((*filter->output_function)(0x7e, filter->data));
    CK((*filter->output_function)(0x7b, filter->data));
   }
   filter->status = 0x200;
   CK((*filter->output_function)((s >> 8) & 0x7f, filter->data));
   CK((*filter->output_function)(s & 0x7f, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
