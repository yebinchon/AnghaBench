
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

int mbfl_filt_conv_ucs2_wchar(int c, mbfl_convert_filter *filter)
{
 int n, endian;

 endian = filter->status & 0xff00;
 switch (filter->status & 0xff) {
 case 0:
  if (endian) {
   n = c & 0xff;
  } else {
   n = (c & 0xff) << 8;
  }
  filter->cache = n;
  filter->status++;
  break;
 default:
  if (endian) {
   n = (c & 0xff) << 8;
  } else {
   n = c & 0xff;
  }
  n |= filter->cache;
  if (n == 0xfffe) {
   if (endian) {
    filter->status = 0;
   } else {
    filter->status = 0x100;
   }
   CK((*filter->output_function)(0xfeff, filter->data));
  } else {
   filter->status &= ~0xff;
   CK((*filter->output_function)(n, filter->data));
  }
  break;
 }

 return c;
}
