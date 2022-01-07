
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
 int MBFL_WCSPLANE_GB2312 ;
 int MBFL_WCSPLANE_MASK ;
 int* cp936_ucs_table ;
 int cp936_ucs_table_size ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;

int
mbfl_filt_conv_hz_wchar(int c, mbfl_convert_filter *filter)
{
 int c1, s, w;

 switch (filter->status & 0xf) {


 case 0:
  if (c == 0x7e) {
   filter->status += 2;
  } else if (filter->status == 0x10 && c > 0x20 && c < 0x7f) {
   filter->cache = c;
   filter->status += 1;
  } else if (c >= 0 && c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else {
   w = c & MBFL_WCSGROUP_MASK;
   w |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(w, filter->data));
  }
  break;


 case 1:
  filter->status &= ~0xf;
  c1 = filter->cache;
  if (c1 > 0x20 && c1 < 0x7f && c > 0x20 && c < 0x7f) {
   s = (c1 - 1)*192 + c + 0x40;
   if (s >= 0 && s < cp936_ucs_table_size) {
    w = cp936_ucs_table[s];
   } else {
    w = 0;
   }
   if (w <= 0) {
    w = (c1 << 8) | c;
    w &= MBFL_WCSPLANE_MASK;
    w |= MBFL_WCSPLANE_GB2312;
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
  if (c == 0x7d) {
   filter->status = 0x0;
  } else if (c == 0x7b) {
   filter->status = 0x10;
  } else if (c == 0x7e) {
   filter->status = 0x0;
   CK((*filter->output_function)(0x007e, filter->data));
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
