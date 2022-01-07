
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
 int stub3 (int,int ) ;

int mbfl_filt_conv_base64dec(int c, mbfl_convert_filter *filter)
{
 int n;

 if (c == 0x0d || c == 0x0a || c == 0x20 || c == 0x09 || c == 0x3d) {
  return c;
 }

 n = 0;
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
 n &= 0x3f;

 switch (filter->status) {
 case 0:
  filter->status = 1;
  filter->cache = n << 18;
  break;
 case 1:
  filter->status = 2;
  filter->cache |= n << 12;
  break;
 case 2:
  filter->status = 3;
  filter->cache |= n << 6;
  break;
 default:
  filter->status = 0;
  n |= filter->cache;
  CK((*filter->output_function)((n >> 16) & 0xff, filter->data));
  CK((*filter->output_function)((n >> 8) & 0xff, filter->data));
  CK((*filter->output_function)(n & 0xff, filter->data));
  break;
 }

 return c;
}
