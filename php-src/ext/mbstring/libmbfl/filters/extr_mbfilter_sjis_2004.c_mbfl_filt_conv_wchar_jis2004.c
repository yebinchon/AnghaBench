
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int status; int cache; int data; int (* output_function ) (int,int ) ;TYPE_1__* to; } ;
typedef TYPE_2__ mbfl_convert_filter ;
struct TYPE_5__ {scalar_t__ no_encoding; } ;


 int CK (int ) ;
 int MBFL_WCSPLANE_JIS0213 ;
 int MBFL_WCSPLANE_MASK ;
 int SJIS_ENCODE (int,int,int,int) ;
 int* jisx0213_p2_ofst ;
 int jisx0213_p2_ofst_len ;
 int* jisx0213_u2_fb_tbl ;
 int* jisx0213_u2_key ;
 int* jisx0213_u2_tbl ;
 int jisx0213_u2_tbl_len ;
 int jisx0213_u5_jis_key ;
 int* jisx0213_u5_jis_tbl ;
 int jisx0213_u5_tbl_len ;
 int jisx0213_u5_tbl_max ;
 int jisx0213_u5_tbl_min ;
 int mbfl_bisec_srch (int,int*,int ) ;
 int mbfl_bisec_srch2 (int,int ,int ) ;
 int mbfl_filt_conv_illegal_output (int,TYPE_2__*) ;
 scalar_t__ mbfl_no_encoding_2022jp_2004 ;
 scalar_t__ mbfl_no_encoding_eucjp2004 ;
 scalar_t__ mbfl_no_encoding_sjis2004 ;
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
 int stub19 (int,int ) ;
 int stub2 (int,int ) ;
 int stub20 (int,int ) ;
 int stub21 (int,int ) ;
 int stub22 (int,int ) ;
 int stub23 (int,int ) ;
 int stub24 (int,int ) ;
 int stub25 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;
 int ucs_c1_jisx0213_max ;
 int ucs_c1_jisx0213_min ;
 int* ucs_c1_jisx0213_ofst ;
 int* ucs_c1_jisx0213_tbl ;
 int ucs_c1_jisx0213_tbl_len ;
 int ucs_r2b_jisx0213_cmap_key ;
 int ucs_r2b_jisx0213_cmap_len ;
 int* ucs_r2b_jisx0213_cmap_val ;
 int** uni2jis_tbl ;
 int uni2jis_tbl_len ;
 int** uni2jis_tbl_range ;

int
mbfl_filt_conv_wchar_jis2004(int c, mbfl_convert_filter *filter) {
 int k;
 int c1, c2, s1 = 0, s2;

retry:


 if ((filter->status & 0xf)== 0 && (
   c == 0x00E6 ||
   (c >= 0x0254 && c <= 0x02E9) ||
   (c >= 0x304B && c <= 0x3053) ||
   (c >= 0x30AB && c <= 0x30C8) ||
   c == 0x31F7)) {
  for (k=0;k<jisx0213_u2_tbl_len;k++) {
   if (c == jisx0213_u2_tbl[2*k]) {
    filter->status++;
    filter->cache = k;
    return c;
   }
  }
 }


 if ((filter->status & 0xf) == 1 &&
  filter->cache >= 0 && filter->cache <= jisx0213_u2_tbl_len) {
  k = filter->cache;
  filter->status &= ~0xf;
  filter->cache = 0;

  c1 = jisx0213_u2_tbl[2*k];
  if ((c1 == 0x0254 || c1 == 0x028C || c1 == 0x0259 || c1 == 0x025A)
   && c == 0x0301) {
   k++;
  }
  if (c == jisx0213_u2_tbl[2*k+1]) {
   s1 = jisx0213_u2_key[k];
  } else {
   s1 = jisx0213_u2_fb_tbl[k];

   if (filter->to->no_encoding == mbfl_no_encoding_sjis2004) {
    c1 = (s1 >> 8) & 0xff;
    c2 = s1 & 0xff;
    SJIS_ENCODE(c1, c2, s1, s2);
   } else if (filter->to->no_encoding == mbfl_no_encoding_eucjp2004) {
    s2 = (s1 & 0xff) + 0x80;
    s1 = ((s1 >> 8) & 0xff) + 0x80;
   } else {
    if (filter->status != 0x200) {
     CK((*filter->output_function)(0x1b, filter->data));
     CK((*filter->output_function)(0x24, filter->data));
     CK((*filter->output_function)(0x28, filter->data));
     CK((*filter->output_function)(0x51, filter->data));
    }
    filter->status = 0x200;

    s2 = s1 & 0x7f;
    s1 = (s1 >> 8) & 0x7f;
   }

   CK((*filter->output_function)(s1, filter->data));
   CK((*filter->output_function)(s2, filter->data));
   goto retry;
  }
 }


 if (s1 <= 0) {
  for (k=0; k < uni2jis_tbl_len ;k++) {
   if (c >= uni2jis_tbl_range[k][0] && c <= uni2jis_tbl_range[k][1]) {
    s1 = uni2jis_tbl[k][c-uni2jis_tbl_range[k][0]];
    break;
   }
  }
 }


 if (s1 <= 0 && c >= ucs_c1_jisx0213_min && c <= ucs_c1_jisx0213_max) {
  k = mbfl_bisec_srch(c, ucs_c1_jisx0213_tbl, ucs_c1_jisx0213_tbl_len);
  if (k >= 0) {
   s1 = ucs_c1_jisx0213_ofst[k] + c - ucs_c1_jisx0213_tbl[2*k];
  }
 }


 if (s1 <= 0 && c >= jisx0213_u5_tbl_min && c <= jisx0213_u5_tbl_max) {
  k = mbfl_bisec_srch2(c - 0x20000, jisx0213_u5_jis_key, jisx0213_u5_tbl_len);
  if (k >= 0) {
   s1 = jisx0213_u5_jis_tbl[k];
  }
 }

 if (s1 <= 0) {

  if (c == 0xfe45) {
   s1 = 0x233e;
  } else if (c == 0xfe46) {
   s1 = 0x233d;
  } else if (c >= 0xf91d && c <= 0xf9dc) {

   k = mbfl_bisec_srch2(c, ucs_r2b_jisx0213_cmap_key, ucs_r2b_jisx0213_cmap_len);
   if (k >= 0) {
    s1 = ucs_r2b_jisx0213_cmap_val[k];
   }
  }
 }

 if (s1 <= 0) {
  c1 = c & ~MBFL_WCSPLANE_MASK;
  if (c1 == MBFL_WCSPLANE_JIS0213) {
   s1 = c & MBFL_WCSPLANE_MASK;
  }
  if (c == 0) {
   s1 = 0;
  } else if (s1 <= 0) {
   s1 = -1;
  }
 } else if (s1 >= 0x9980) {
  s1 = -1;
 }

 if (s1 >= 0) {
  if (s1 < 0x80) {
   if (filter->to->no_encoding == mbfl_no_encoding_2022jp_2004 &&
    (filter->status & 0xff00) != 0) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x28, filter->data));
    CK((*filter->output_function)(0x42, filter->data));
   }
   filter->status = 0;
   CK((*filter->output_function)(s1, filter->data));
  } else if (s1 < 0x100) {
   if (filter->to->no_encoding == mbfl_no_encoding_eucjp2004) {
    CK((*filter->output_function)(0x8e, filter->data));
   }
   CK((*filter->output_function)(s1, filter->data));
  } else if (s1 < 0x7f00) {
   if (filter->to->no_encoding == mbfl_no_encoding_sjis2004) {
    c1 = (s1 >> 8) & 0xff;
    c2 = s1 & 0xff;
    SJIS_ENCODE(c1, c2, s1, s2);
   } else if (filter->to->no_encoding == mbfl_no_encoding_eucjp2004) {
    s2 = (s1 & 0xff) + 0x80;
    s1 = ((s1 >> 8) & 0xff) + 0x80;
   } else {
    if ((filter->status & 0xff00) != 0x200) {
     CK((*filter->output_function)(0x1b, filter->data));
     CK((*filter->output_function)(0x24, filter->data));
     CK((*filter->output_function)(0x28, filter->data));
     CK((*filter->output_function)(0x51, filter->data));
    }
    filter->status = 0x200;
    s2 = s1 & 0xff;
    s1 = (s1 >> 8) & 0xff;
   }
   CK((*filter->output_function)(s1, filter->data));
   CK((*filter->output_function)(s2, filter->data));
  } else {
   if (filter->to->no_encoding == mbfl_no_encoding_sjis2004) {
    c1 = (s1 >> 8) & 0xff;
    c2 = s1 & 0xff;
    SJIS_ENCODE(c1, c2, s1, s2);
   } else {
    s2 = s1 & 0xff;
    k = ((s1 >> 8) & 0xff) - 0x7f;
    if (k >= 0 && k < jisx0213_p2_ofst_len) {
     s1 = jisx0213_p2_ofst[k] - 1 + 0x21;
    }
    if (filter->to->no_encoding == mbfl_no_encoding_eucjp2004) {
     s2 |= 0x80;
     s1 |= 0x80;
     CK((*filter->output_function)(0x8f, filter->data));
    } else {
     if ((filter->status & 0xff00) != 0x200) {
      CK((*filter->output_function)(0x1b, filter->data));
      CK((*filter->output_function)(0x24, filter->data));
      CK((*filter->output_function)(0x28, filter->data));
      CK((*filter->output_function)(0x50, filter->data));
     }
     filter->status = 0x200;
    }
   }

   CK((*filter->output_function)(s1, filter->data));
   CK((*filter->output_function)(s2, filter->data));
  }
 } else {
  CK(mbfl_filt_conv_illegal_output(c, filter));
 }

 return c;
}
