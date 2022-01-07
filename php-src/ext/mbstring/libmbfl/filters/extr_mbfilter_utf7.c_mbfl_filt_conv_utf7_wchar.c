
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
 int stub10 (int,int ) ;
 int stub11 (int,int ) ;
 int stub12 (int,int ) ;
 int stub13 (int,int ) ;
 int stub14 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int mbfl_filt_conv_utf7_wchar(int c, mbfl_convert_filter *filter)
{
 int s, n;

 n = -1;
 if (filter->status != 0) {
  if (c >= 0x41 && c <= 0x5a) {
   n = c - 65;
  } else if (c >= 0x61 && c <= 0x7a) {
   n = c - 71;
  } else if (c >= 0x30 && c <= 0x39) {
   n = c + 4;
  } else if (c == 0x2b) {
   n = 62;
  } else if (c == 0x2f) {
   n = 63;
  }
  if (n < 0 || n > 63) {
   if (c == 0x2d) {
    if (filter->status == 1) {
     CK((*filter->output_function)(0x2b, filter->data));
    }
   } else if (c >= 0 && c < 0x80) {
    CK((*filter->output_function)(c, filter->data));
   } else {
    s = c & MBFL_WCSGROUP_MASK;
    s |= MBFL_WCSGROUP_THROUGH;
    CK((*filter->output_function)(s, filter->data));
   }
   filter->cache = 0;
   filter->status = 0;
   return c;
  }
 }

 switch (filter->status) {

 case 0:
  if (c == 0x2b) {
   filter->status = 1;
  } else if (c >= 0 && c < 0x80) {
   CK((*filter->output_function)(c, filter->data));
  } else {
   s = c & MBFL_WCSGROUP_MASK;
   s |= MBFL_WCSGROUP_THROUGH;
   CK((*filter->output_function)(s, filter->data));
  }
  break;


 case 1:
 case 2:
  filter->cache |= n << 10;
  filter->status = 3;
  break;
 case 3:
  filter->cache |= n << 4;
  filter->status = 4;
  break;
 case 4:
  s = ((n >> 2) & 0xf) | (filter->cache & 0xffff);
  n = (n & 0x3) << 14;
  filter->status = 5;
  if (s >= 0xd800 && s < 0xdc00) {
   s = (((s & 0x3ff) << 16) + 0x400000) | n;
   filter->cache = s;
  } else if (s >= 0xdc00 && s < 0xe000) {
   s &= 0x3ff;
   s |= (filter->cache & 0xfff0000) >> 6;
   filter->cache = n;
   if (s >= MBFL_WCSPLANE_SUPMIN && s < MBFL_WCSPLANE_SUPMAX) {
    CK((*filter->output_function)(s, filter->data));
   } else {
    s &= MBFL_WCSGROUP_MASK;
    s |= MBFL_WCSGROUP_THROUGH;
    CK((*filter->output_function)(s, filter->data));
   }
  } else {
   filter->cache = n;
   CK((*filter->output_function)(s, filter->data));
  }
  break;

 case 5:
  filter->cache |= n << 8;
  filter->status = 6;
  break;
 case 6:
  filter->cache |= n << 2;
  filter->status = 7;
  break;
 case 7:
  s = ((n >> 4) & 0x3) | (filter->cache & 0xffff);
  n = (n & 0xf) << 12;
  filter->status = 8;
  if (s >= 0xd800 && s < 0xdc00) {
   s = (((s & 0x3ff) << 16) + 0x400000) | n;
   filter->cache = s;
  } else if (s >= 0xdc00 && s < 0xe000) {
   s &= 0x3ff;
   s |= (filter->cache & 0xfff0000) >> 6;
   filter->cache = n;
   if (s >= MBFL_WCSPLANE_SUPMIN && s < MBFL_WCSPLANE_SUPMAX) {
    CK((*filter->output_function)(s, filter->data));
   } else {
    s &= MBFL_WCSGROUP_MASK;
    s |= MBFL_WCSGROUP_THROUGH;
    CK((*filter->output_function)(s, filter->data));
   }
  } else {
   filter->cache = n;
   CK((*filter->output_function)(s, filter->data));
  }
  break;

 case 8:
  filter->cache |= n << 6;
  filter->status = 9;
  break;
 case 9:
  s = n | (filter->cache & 0xffff);
  filter->status = 2;
  if (s >= 0xd800 && s < 0xdc00) {
   s = (((s & 0x3ff) << 16) + 0x400000);
   filter->cache = s;
  } else if (s >= 0xdc00 && s < 0xe000) {
   s &= 0x3ff;
   s |= (filter->cache & 0xfff0000) >> 6;
   filter->cache = 0;
   if (s >= MBFL_WCSPLANE_SUPMIN && s < MBFL_WCSPLANE_SUPMAX) {
    CK((*filter->output_function)(s, filter->data));
   } else {
    s &= MBFL_WCSGROUP_MASK;
    s |= MBFL_WCSGROUP_THROUGH;
    CK((*filter->output_function)(s, filter->data));
   }
  } else {
   filter->cache = 0;
   CK((*filter->output_function)(s, filter->data));
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
