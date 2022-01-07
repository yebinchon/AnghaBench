
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
 int MBFL_WCSPLANE_MASK ;
 int SJIS_DECODE (int,int,int,int) ;
 int* jisx0208_ucs_table ;
 int jisx0208_ucs_table_size ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;

int
mbfl_filt_conv_sjis_wchar(int c, mbfl_convert_filter *filter)
{
 int c1, s1, s2, w;

 switch (filter->status) {
 case 0:
  if (c >= 0 && c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else if (c > 0xa0 && c < 0xe0) {
   CK((*filter->output_function)(0xfec0 + c, filter->data));
  } else if (c > 0x80 && c < 0xfd && c != 0xa0) {
   filter->status = 1;
   filter->cache = c;
  } else {
   w = c & MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;

 case 1:
  filter->status = 0;
  c1 = filter->cache;
  if (c >= 0x40 && c <= 0xfc && c != 0x7f) {
   SJIS_DECODE(c1, c, s1, s2);
   w = (s1 - 0x21)*94 + s2 - 0x21;
   if (w >= 0 && w < jisx0208_ucs_table_size) {
    w = jisx0208_ucs_table[w];
   } else {
    w = 0;
   }
   if (w <= 0) {
    if (s1 < 0x7f && s2 < 0x7f) {
     w = (s1 << 8) | s2;
     w &= MBFL_WCSPLANE_MASK;
     w |= MBFL_WCSPLANE_JIS0208;
    } else {
     w = (c1 << 8) | c;
     w &= MBFL_WCSGROUP_MASK;
     w |= MBFL_WCSGROUP_THROUGH;
    }
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

 default:
  filter->status = 0;
  break;
 }

 return c;
}
