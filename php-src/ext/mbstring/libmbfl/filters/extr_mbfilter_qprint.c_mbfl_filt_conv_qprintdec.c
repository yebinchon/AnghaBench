
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
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;

int mbfl_filt_conv_qprintdec(int c, mbfl_convert_filter *filter)
{
 int n, m;

 static int hex2code_map[] = {
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1,
  -1, 10, 11, 12, 13, 14, 15, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, 10, 11, 12, 13, 14, 15, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
 };

 switch (filter->status) {
 case 1:
  if (hex2code_map[c & 0xff] >= 0) {
   filter->cache = c;
   filter->status = 2;
  } else if (c == 0x0d) {
   filter->status = 3;
  } else if (c == 0x0a) {
   filter->status = 0;
  } else {
   CK((*filter->output_function)(0x3d, filter->data));
   CK((*filter->output_function)(c, filter->data));
   filter->status = 0;
  }
  break;
 case 2:
  m = hex2code_map[c & 0xff];
  if (m < 0) {
   CK((*filter->output_function)(0x3d, filter->data));
   CK((*filter->output_function)(filter->cache, filter->data));
   n = c;
  } else {
   n = hex2code_map[filter->cache] << 4 | m;
  }
  CK((*filter->output_function)(n, filter->data));
  filter->status = 0;
  break;
 case 3:
  if (c != 0x0a) {
   CK((*filter->output_function)(c, filter->data));
  }
  filter->status = 0;
  break;
 default:
  if (c == 0x3d) {
   filter->status = 1;
  } else {
   CK((*filter->output_function)(c, filter->data));
  }
  break;
 }

 return c;
}
