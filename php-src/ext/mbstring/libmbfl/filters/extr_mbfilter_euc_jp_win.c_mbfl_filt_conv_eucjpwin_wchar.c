
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_WCSGROUP_MASK ;
 int MBFL_WCSGROUP_THROUGH ;
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
 int* jisx0208_ucs_table ;
 int jisx0208_ucs_table_size ;
 int* jisx0212_ucs_table ;
 int jisx0212_ucs_table_size ;
 int stub1 (int,int ) ;
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub12 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int
mbfl_filt_conv_eucjpwin_wchar(int c, mbfl_convert_filter *filter)
{
 int c1, s, w, n;

 switch (filter->status) {
 case 0:
  if (c >= 0 && c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else if (c > 0xa0 && c < 0xff) {
   filter->status = 1;
   filter->cache = c;
  } else if (c == 0x8e) {
   filter->status = 2;
  } else if (c == 0x8f) {
   filter->status = 3;
  } else {
   w = c & MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;

 case 1:
  filter->status = 0;
  c1 = filter->cache;
  if (c > 0xa0 && c < 0xff) {
   w = 0;
   s = (c1 - 0xa1)*94 + c - 0xa1;
   if (s <= 137) {
    if (s == 31) {
     w = 0xff3c;
    } else if (s == 32) {
     w = 0xff5e;
    } else if (s == 33) {
     w = 0x2225;
    } else if (s == 60) {
     w = 0xff0d;
    } else if (s == 80) {
     w = 0xffe0;
    } else if (s == 81) {
     w = 0xffe1;
    } else if (s == 137) {
     w = 0xffe2;
    }
   }
   if (w == 0) {
    if (s >= cp932ext1_ucs_table_min && s < cp932ext1_ucs_table_max) {
     w = cp932ext1_ucs_table[s - cp932ext1_ucs_table_min];
    } else if (s >= 0 && s < jisx0208_ucs_table_size) {
     w = jisx0208_ucs_table[s];
    } else if (s >= (84 * 94)) {
     w = s - (84 * 94) + 0xe000;
    }
   }
   if (w <= 0) {
    w = ((c1 & 0x7f) << 8) | (c & 0x7f);
    w &= MBFL_WCSPLANE_MASK;
    w |= MBFL_WCSPLANE_WINCP932;
   }
   CK((*filter->output_function)(w, filter->data));
  } else if ((c >= 0 && c < 0x21) || c == 0x7f) {
   CK((*filter->output_function)(c, filter->data));
  } else {
   w = (c1 << 8) | c;
   w &= MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;

 case 2:
  filter->status = 0;
  if (c > 0xa0 && c < 0xe0) {
   w = 0xfec0 + c;
   CK((*filter->output_function)(w, filter->data));
  } else if ((c >= 0 && c < 0x21) || c == 0x7f) {
   CK((*filter->output_function)(c, filter->data));
  } else {
   w = 0x8e00 | c;
   w &= MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;

 case 3:
  if ((c >= 0 && c < 0x21) || c == 0x7f) {
   CK((*filter->output_function)(c, filter->data));
   filter->status = 0;
  } else {
   filter->status++;
   filter->cache = c;
  }
  break;
 case 4:
  filter->status = 0;
  c1 = filter->cache;
  if (c1 > 0xa0 && c1 < 0xff && c > 0xa0 && c < 0xff) {
   s = (c1 - 0xa1)*94 + c - 0xa1;
   if (s >= 0 && s < jisx0212_ucs_table_size) {
    w = jisx0212_ucs_table[s];
    if (w == 0x007e) {
     w = 0xff5e;
    }
   } else if (s >= (82*94) && s < (84*94)) {
    s = (c1<< 8) | c;
    w = 0;
    n = 0;
    while (n < cp932ext3_eucjp_table_size) {
     if (s == cp932ext3_eucjp_table[n]) {
      if (n < (cp932ext3_ucs_table_max - cp932ext3_ucs_table_min)) {
       w = cp932ext3_ucs_table[n];
      }
      break;
     }
     n++;
    }
   } else if (s >= (84*94)) {
    w = s - (84*94) + (0xe000 + (94*10));
   } else {
    w = 0;
   }
   if (w == 0x00A6) {
    w = 0xFFE4;
   }
   if (w <= 0) {
    w = ((c1 & 0x7f) << 8) | (c & 0x7f);
    w &= MBFL_WCSPLANE_MASK;
    w |= MBFL_WCSPLANE_JIS0212;
   }
   CK((*filter->output_function)(w, filter->data));
  } else if ((c >= 0 && c < 0x21) || c == 0x7f) {
   CK((*filter->output_function)(c, filter->data));
  } else {
   w = (c1 << 8) | c | 0x8f0000;
   w &= MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
