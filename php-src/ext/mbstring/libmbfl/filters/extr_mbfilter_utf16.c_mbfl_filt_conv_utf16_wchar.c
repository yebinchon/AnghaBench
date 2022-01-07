
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
 int MBFL_WCSPLANE_SUPMAX ;
 int MBFL_WCSPLANE_SUPMIN ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;

int mbfl_filt_conv_utf16_wchar(int c, mbfl_convert_filter *filter)
{
 int n, endian;

 endian = filter->status & 0xff00;
 switch (filter->status & 0x0f) {
 case 0:
  if (endian) {
   n = c & 0xff;
  } else {
   n = (c & 0xff) << 8;
  }
  filter->cache |= n;
  filter->status++;
  break;
 default:
  if (endian) {
   n = (c & 0xff) << 8;
  } else {
   n = c & 0xff;
  }
  n |= filter->cache & 0xffff;
  filter->status &= ~0x0f;
  if (n >= 0xd800 && n < 0xdc00) {
   filter->cache = ((n & 0x3ff) << 16) + 0x400000;
  } else if (n >= 0xdc00 && n < 0xe000) {
   n &= 0x3ff;
   n |= (filter->cache & 0xfff0000) >> 6;
   filter->cache = 0;
   if (n >= MBFL_WCSPLANE_SUPMIN && n < MBFL_WCSPLANE_SUPMAX) {
    CK((*filter->output_function)(n, filter->data));
   } else {
    n &= MBFL_WCSGROUP_MASK;
    n |= MBFL_WCSGROUP_THROUGH;
    CK((*filter->output_function)(n, filter->data));
   }
  } else {
   int is_first = filter->status & 0x10;
   filter->cache = 0;
   filter->status |= 0x10;
   if (!is_first) {
    if (n == 0xfffe) {
     if (endian) {
      filter->status &= ~0x100;
     } else {
      filter->status |= 0x100;
     }
     break;
    } else if (n == 0xfeff) {
     break;
    }
   }
   CK((*filter->output_function)(n, filter->data));
  }
  break;
 }

 return c;
}
