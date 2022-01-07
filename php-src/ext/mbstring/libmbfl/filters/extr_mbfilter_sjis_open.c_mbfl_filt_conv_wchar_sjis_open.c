
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
 int SJIS_ENCODE (int,int,int,int) ;
 int* cp932ext1_ucs_table ;
 int cp932ext1_ucs_table_max ;
 int cp932ext1_ucs_table_min ;
 int* cp932ext3_ucs_table ;
 int cp932ext3_ucs_table_max ;
 int cp932ext3_ucs_table_min ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
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
mbfl_filt_conv_wchar_sjis_open(int c, mbfl_convert_filter *filter)
{
 int c1, c2, s1, s2;

 s1 = 0;
 s2 = 0;
 if (c >= ucs_a1_jis_table_min && c < ucs_a1_jis_table_max) {
  s1 = ucs_a1_jis_table[c - ucs_a1_jis_table_min];
 } else if (c >= ucs_a2_jis_table_min && c < ucs_a2_jis_table_max) {
  s1 = ucs_a2_jis_table[c - ucs_a2_jis_table_min];
 } else if (c >= ucs_i_jis_table_min && c < ucs_i_jis_table_max) {
  s1 = ucs_i_jis_table[c - ucs_i_jis_table_min];
 } else if (c >= ucs_r_jis_table_min && c < ucs_r_jis_table_max) {
  s1 = ucs_r_jis_table[c - ucs_r_jis_table_min];
 } else if (c >= 0xe000 && c < (0xe000 + 20*94)) {
  s1 = c - 0xe000;
  c1 = s1/94 + 0x7f;
  c2 = s1%94 + 0x21;
  s1 = (c1 << 8) | c2;
  s2 = 1;
 }
 if (s1 <= 0) {
  c1 = c & ~MBFL_WCSPLANE_MASK;
  if (c1 == MBFL_WCSPLANE_WINCP932) {
   s1 = c & MBFL_WCSPLANE_MASK;
   s2 = 1;
  } else if (c1 == MBFL_WCSPLANE_JIS0208) {
   s1 = c & MBFL_WCSPLANE_MASK;
  } else if (c1 == MBFL_WCSPLANE_JIS0212) {
   s1 = c & MBFL_WCSPLANE_MASK;
   s1 |= 0x8080;
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
  }
 }
 if ((s1 <= 0) || (s1 >= 0x8080 && s2 == 0)) {
  s1 = -1;
  c1 = 0;
  c2 = cp932ext1_ucs_table_max - cp932ext1_ucs_table_min;
  while (c1 < c2) {
   if (c == cp932ext1_ucs_table[c1]) {
    s1 = ((c1/94 + 0x2d) << 8) + (c1%94 + 0x21);
    break;
   }
   c1++;
  }
  if (s1 <= 0) {
   c1 = 0;
   c2 = cp932ext3_ucs_table_max - cp932ext3_ucs_table_min;
   while (c1 < c2) {
    if (c == cp932ext3_ucs_table[c1]) {
     s1 = ((c1/94 + 0x93) << 8) + (c1%94 + 0x21);
     break;
    }
    c1++;
   }
  }
  if (c == 0) {
   s1 = 0;
  } else if (s1 <= 0) {
   s1 = -1;
  }
 }

 if (s1 >= 0) {
  if (s1 < 0x100) {
   CK((*filter->output_function)(s1, filter->data));
  } else {
   c1 = (s1 >> 8) & 0xff;
   c2 = s1 & 0xff;
   SJIS_ENCODE(c1, c2, s1, s2);
   CK((*filter->output_function)(s1, filter->data));
   CK((*filter->output_function)(s2, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
