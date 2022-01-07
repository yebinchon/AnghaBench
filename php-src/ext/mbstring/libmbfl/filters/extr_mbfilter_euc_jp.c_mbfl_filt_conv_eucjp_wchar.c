
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
 int MBFL_WCSPLANE_JIS0208 ;
 int MBFL_WCSPLANE_JIS0212 ;
 int MBFL_WCSPLANE_MASK ;
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
mbfl_filt_conv_eucjp_wchar(int c, mbfl_convert_filter *filter)
{
 int c1, s, w;

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
   s = (c1 - 0xa1)*94 + c - 0xa1;
   if (s >= 0 && s < jisx0208_ucs_table_size) {
    w = jisx0208_ucs_table[s];
   } else {
    w = 0;
   }
   if (w <= 0) {
    w = ((c1 & 0x7f) << 8) | (c & 0x7f);
    w &= MBFL_WCSPLANE_MASK;
    w |= MBFL_WCSPLANE_JIS0208;
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
   } else {
    w = 0;
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
