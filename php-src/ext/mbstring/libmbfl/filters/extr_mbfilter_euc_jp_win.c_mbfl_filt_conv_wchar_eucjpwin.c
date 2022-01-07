
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSPLANE_JIS0208 ;
 int MBFL_WCSPLANE_JIS0212 ;
 int MBFL_WCSPLANE_MASK ;
 int MBFL_WCSPLANE_WINCP932 ;
 int* cp932ext1_ucs_table ;
 int cp932ext1_ucs_table_max ;
 int cp932ext1_ucs_table_min ;
 int* cp932ext3_eucjp_table ;
 int cp932ext3_eucjp_table_size ;
 int* cp932ext3_ucs_table ;
 int cp932ext3_ucs_table_max ;
 int cp932ext3_ucs_table_min ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int* ucs_a1_jis_table ;
 int ucs_a1_jis_table_max ;
 int ucs_a1_jis_table_min ;
 int* ucs_a2_jis_table ;
 int ucs_a2_jis_table_max ;
 int ucs_a2_jis_table_min ;
 int* ucs_i_jis_table ;
 int ucs_i_jis_table_max ;
 int ucs_i_jis_table_min ;
 int* ucs_r_jis_table ;
 int ucs_r_jis_table_max ;
 int ucs_r_jis_table_min ;

int
mbfl_filt_conv_wchar_eucjpwin(int c, mbfl_convert_filter *filter)
{
 int c1, c2, s1;

 s1 = 0;
 if (c >= ucs_a1_jis_table_min && c < ucs_a1_jis_table_max) {
  s1 = ucs_a1_jis_table[c - ucs_a1_jis_table_min];
 } else if (c >= ucs_a2_jis_table_min && c < ucs_a2_jis_table_max) {
  s1 = ucs_a2_jis_table[c - ucs_a2_jis_table_min];
 } else if (c >= ucs_i_jis_table_min && c < ucs_i_jis_table_max) {
  s1 = ucs_i_jis_table[c - ucs_i_jis_table_min];
 } else if (c >= ucs_r_jis_table_min && c < ucs_r_jis_table_max) {
  s1 = ucs_r_jis_table[c - ucs_r_jis_table_min];
 } else if (c >= 0xe000 && c < (0xe000 + 10*94)) {
  s1 = c - 0xe000;
  c1 = s1/94 + 0x75;
  c2 = s1%94 + 0x21;
  s1 = (c1 << 8) | c2;
 } else if (c >= (0xe000 + 10*94) && c < (0xe000 + 20*94)) {
  s1 = c - (0xe000 + 10*94);
  c1 = s1/94 + 0xf5;
  c2 = s1%94 + 0xa1;
  s1 = (c1 << 8) | c2;
 }
 if (s1 == 0xa2f1) {
  s1 = 0x2d62;
 }
 if (s1 <= 0) {
  c1 = c & ~MBFL_WCSPLANE_MASK;
  if (c1 == MBFL_WCSPLANE_WINCP932) {
   s1 = c & MBFL_WCSPLANE_MASK;
   if (s1 >= ((85 + 0x20) << 8)) {
    s1 = -1;
   }
  } else if (c1 == MBFL_WCSPLANE_JIS0208) {
   s1 = c & MBFL_WCSPLANE_MASK;
   if (s1 >= ((85 + 0x20) << 8)) {
    s1 = -1;
   }
  } else if (c1 == MBFL_WCSPLANE_JIS0212) {
   s1 = c & MBFL_WCSPLANE_MASK;
   if (s1 >= ((83 + 0x20) << 8)) {
    s1 = -1;
   } else {
    s1 |= 0x8080;
   }
  } else if (c == 0xa5) {
   s1 = 0x216f;
  } else if (c == 0x203e) {
   s1 = 0x2131;
  } else if (c == 0xff3c) {
   s1 = 0x2140;
  } else if (c == 0xff5e) {
   s1 = 0x2141;
  } else if (c == 0x2225) {
   s1 = 0x2142;
  } else if (c == 0xff0d) {
   s1 = 0x215d;
  } else if (c == 0xffe0) {
   s1 = 0x2171;
  } else if (c == 0xffe1) {
   s1 = 0x2172;
  } else if (c == 0xffe2) {
   s1 = 0x224c;
  } else if (c == 0xff5e) {
   s1 = 0x2141;
  } else {
   s1 = -1;
   c1 = 0;
   c2 = cp932ext1_ucs_table_max - cp932ext1_ucs_table_min;
   while (c1 < c2) {
    const int oh = cp932ext1_ucs_table_min / 94;

    if (c == cp932ext1_ucs_table[c1]) {
     s1 = ((c1 / 94 + oh + 0x21) << 8) + (c1 % 94 + 0x21);
     break;
    }
    c1++;
   }
   if (s1 < 0) {
    c1 = 0;
    c2 = cp932ext3_ucs_table_max - cp932ext3_ucs_table_min;
    while (c1 < c2) {
     if (c == cp932ext3_ucs_table[c1]) {
      if (c1 < cp932ext3_eucjp_table_size) {
       s1 = cp932ext3_eucjp_table[c1];
      }
      break;
     }
     c1++;
    }
   }
  }
  if (c == 0) {
   s1 = 0;
  } else if (s1 <= 0) {
   s1 = -1;
  }
 }

 if (s1 >= 0) {
  if (s1 < 0x80) {
   CK((*filter->output_function)(s1, filter->data));
  } else if (s1 < 0x100) {
   CK((*filter->output_function)(0x8e, filter->data));
   CK((*filter->output_function)(s1, filter->data));
  } else if (s1 < 0x8080) {
   CK((*filter->output_function)(((s1 >> 8) & 0xff) | 0x80, filter->data));
   CK((*filter->output_function)((s1 & 0xff) | 0x80, filter->data));
  } else {
   CK((*filter->output_function)(0x8f, filter->data));
   CK((*filter->output_function)(((s1 >> 8) & 0xff) | 0x80, filter->data));
   CK((*filter->output_function)((s1 & 0xff) | 0x80, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
