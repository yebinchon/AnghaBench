
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int MBFL_CHP_MMHQENC ;
 int MBFL_QPRINT_STS_MIME_HEADER ;
 int* mbfl_charprop_table ;
 int stub1 (int,int ) ;
 int stub10 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int mbfl_filt_conv_qprintenc(int c, mbfl_convert_filter *filter)
{
 int s, n;

 switch (filter->status & 0xff) {
 case 0:
  filter->cache = c;
  filter->status++;
  break;
 default:
  s = filter->cache;
  filter->cache = c;
  n = (filter->status & 0xff00) >> 8;

  if (s == 0) {
   CK((*filter->output_function)(s, filter->data));
   filter->status &= ~0xff00;
   break;
  }

  if ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) == 0) {
   if (s == 0x0a || (s == 0x0d && c != 0x0a)) {
    CK((*filter->output_function)(0x0d, filter->data));
    CK((*filter->output_function)(0x0a, filter->data));
    filter->status &= ~0xff00;
    break;
   } else if (s == 0x0d) {
    break;
   }
  }

  if ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) == 0 && n >= 72) {
   CK((*filter->output_function)(0x3d, filter->data));
   CK((*filter->output_function)(0x0d, filter->data));
   CK((*filter->output_function)(0x0a, filter->data));
   filter->status &= ~0xff00;
  }

  if (s <= 0 || s >= 0x80 || s == 0x3d
     || ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) != 0 &&
         (mbfl_charprop_table[s] & MBFL_CHP_MMHQENC) != 0)) {

   CK((*filter->output_function)(0x3d, filter->data));
   n = (s >> 4) & 0xf;
   if (n < 10) {
    n += 48;
   } else {
    n += 55;
   }
   CK((*filter->output_function)(n, filter->data));
   n = s & 0xf;
   if (n < 10) {
    n += 48;
   } else {
    n += 55;
   }
   CK((*filter->output_function)(n, filter->data));
   if ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) == 0) {
    filter->status += 0x300;
   }
  } else {
   CK((*filter->output_function)(s, filter->data));
   if ((filter->status & MBFL_QPRINT_STS_MIME_HEADER) == 0) {
    filter->status += 0x100;
   }
  }
  break;
 }

 return c;
}
