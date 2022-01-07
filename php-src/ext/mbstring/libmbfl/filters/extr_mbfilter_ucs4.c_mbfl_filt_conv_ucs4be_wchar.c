
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int stub1 (int,int ) ;

int mbfl_filt_conv_ucs4be_wchar(int c, mbfl_convert_filter *filter)
{
 int n;

 if (filter->status == 0) {
  filter->status = 1;
  n = (c & 0xff) << 24;
  filter->cache = n;
 } else if (filter->status == 1) {
  filter->status = 2;
  n = (c & 0xff) << 16;
  filter->cache |= n;
 } else if (filter->status == 2) {
  filter->status = 3;
  n = (c & 0xff) << 8;
  filter->cache |= n;
 } else {
  filter->status = 0;
  n = (c & 0xff) | filter->cache;
  CK((*filter->output_function)(n, filter->data));
 }
 return c;
}
