
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int* cp932ext1_ucs_table ;
 int cp932ext1_ucs_table_max ;
 int cp932ext1_ucs_table_min ;
 int* cp932ext2_ucs_table ;
 int cp932ext2_ucs_table_max ;
 int cp932ext2_ucs_table_min ;
 int* cp932ext3_eucjp_table ;
 int const cp932ext3_eucjp_table_size ;
 int* cp932ext3_ucs_table ;
 int cp932ext3_ucs_table_max ;
 int cp932ext3_ucs_table_min ;
 int mbfl_filt_conv_illegal_output (int,TYPE_1__*) ;
 int stub1 (int,int ) ;
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub12 (int,int ) ;
 int stub13 (int,int ) ;
 int stub14 (int,int ) ;
 int stub15 (int,int ) ;
 int stub16 (int,int ) ;
 int stub17 (int,int ) ;
 int stub18 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;
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
mbfl_filt_conv_wchar_cp50222(int c, mbfl_convert_filter *filter)
{
 int s;

 s = 0;

 if (c >= ucs_a1_jis_table_min && c < ucs_a1_jis_table_max) {
  s = ucs_a1_jis_table[c - ucs_a1_jis_table_min];
 } else if (c >= ucs_a2_jis_table_min && c < ucs_a2_jis_table_max) {
  s = ucs_a2_jis_table[c - ucs_a2_jis_table_min];
 } else if (c >= ucs_i_jis_table_min && c < ucs_i_jis_table_max) {
  s = ucs_i_jis_table[c - ucs_i_jis_table_min];
 } else if (c >= ucs_r_jis_table_min && c < ucs_r_jis_table_max) {
  s = ucs_r_jis_table[c - ucs_r_jis_table_min];
 } else if (c >= 0xe000 && c < (0xe000 + 10 * 94)) {


  s = c - 0xe000;
  s = (s / 94 + 0x75) << 8 | (s % 94 + 0x21);
 } else if (c >= (0xe000 + 10 * 94) && c <= (0xe000 + 20 * 94)) {


  s = c - (0xe000 + 10 * 94);
  s = (s / 94 + 0xf5) << 8 | (s % 94 + 0xa1);
 }

 if (s <= 0) {
  if (c == 0xa5) {
   s = 0x1005c;
  } else if (c == 0x203e) {
   s = 0x1007e;
  } else if (c == 0xff3c) {
   s = 0x2140;
  } else if (c == 0xff5e) {
   s = 0x2141;
  } else if (c == 0x2225) {
   s = 0x2142;
  } else if (c == 0xff0d) {
   s = 0x215d;
  } else if (c == 0xffe0) {
   s = 0x2171;
  } else if (c == 0xffe1) {
   s = 0x2172;
  } else if (c == 0xffe2) {
   s = 0x224c;
  }
 }
 if (s <= 0 || (s >= 0x8080 && s < 0x10000)) {
  int i;
  s = -1;

  for (i = 0;
    i < cp932ext1_ucs_table_max - cp932ext1_ucs_table_min; i++) {
   const int oh = cp932ext1_ucs_table_min / 94;

   if (c == cp932ext1_ucs_table[i]) {
    s = ((i / 94 + oh + 0x21) << 8) + (i % 94 + 0x21);
    break;
   }
  }

  if (s <= 0) {
   const int oh = cp932ext2_ucs_table_min / 94;
   const int cp932ext2_ucs_table_size =
     cp932ext2_ucs_table_max - cp932ext2_ucs_table_min;
   for (i = 0; i < cp932ext2_ucs_table_size; i++) {
    if (c == cp932ext2_ucs_table[i]) {
     s = ((i / 94 + oh + 0x21) << 8) + (i % 94 + 0x21);
     break;
    }
   }
  }

  if (s <= 0) {
   const int cp932ext3_ucs_table_size =
     cp932ext3_ucs_table_max - cp932ext3_ucs_table_min;
   const int limit = cp932ext3_ucs_table_size >
     cp932ext3_eucjp_table_size ?
      cp932ext3_eucjp_table_size:
      cp932ext3_ucs_table_size;
   for (i = 0; i < limit; i++) {
    if (c == cp932ext3_ucs_table[i]) {
     s = cp932ext3_eucjp_table[i];
     break;
    }
   }
  }

  if (c == 0) {
   s = 0;
  } else if (s <= 0) {
   s = -1;
  }
 }

 if (s >= 0) {
  if (s < 0x80) {
   if ((filter->status & 0xff00) == 0x500) {
    CK((*filter->output_function)(0x0f, filter->data));
    filter->status = 0;
   } else if ((filter->status & 0xff00) != 0) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x28, filter->data));
    CK((*filter->output_function)(0x42, filter->data));
    filter->status = 0;
   }
   CK((*filter->output_function)(s, filter->data));
  } else if (s >= 0xa0 && s < 0xe0) {
   if ((filter->status & 0xff00) != 0x500) {
    CK((*filter->output_function)(0x0e, filter->data));
    filter->status = 0x500;
   }
   CK((*filter->output_function)(s - 0x80, filter->data));
  } else if (s < 0x8080) {
   if ((filter->status & 0xff00) == 0x500) {
    CK((*filter->output_function)(0x0f, filter->data));
    filter->status = 0;
   }
   if ((filter->status & 0xff00) != 0x200) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x24, filter->data));
    CK((*filter->output_function)(0x42, filter->data));
    filter->status = 0x200;
   }
   CK((*filter->output_function)((s >> 8) & 0x7f, filter->data));
   CK((*filter->output_function)(s & 0x7f, filter->data));
  } else if (s < 0x10000) {
   CK(mbfl_filt_conv_illegal_output(c, filter));
  } else {
   if ((filter->status & 0xff00) == 0x500) {
    CK((*filter->output_function)(0x0f, filter->data));
    filter->status = 0;
   }
   if ((filter->status & 0xff00) != 0x400) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x28, filter->data));
    CK((*filter->output_function)(0x4a, filter->data));
   }
   filter->status = 0x400;
   CK((*filter->output_function)(s & 0x7f, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
