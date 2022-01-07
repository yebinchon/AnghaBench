
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



int mbfl_filt_ident_utf8(int c, mbfl_identify_filter *filter)
{
 int c1;

 c1 = (filter->status >> 8) & 0xff;
 filter->status &= 0xff;

 if (c < 0x80) {
  if (c < 0) {
   filter->flag = 1;
  } else if (filter->status) {
   filter->flag = 1;
  }
  filter->status = 0;
 } else if (c < 0xc0) {
  switch (filter->status) {
  case 0x20:
   if ((c1 == 0x0 && c >= 0xa0) ||
    (c1 == 0xd && c < 0xa0) ||
    (c1 > 0x0 && c1 != 0xd)) {
    filter->status++;
   } else {
    filter->flag = 1;
    filter->status = 0;
   }
   break;
  case 0x30:
   if ((c1 == 0x0 && c >= 0x90) ||
    (c1 > 0x0 && c1 < 0x4) ||
    (c1 == 0x4 && c < 0x90)) {
    filter->status++;
   } else {
    filter->flag = 1;
    filter->status = 0;
   }
   break;
  case 0x31:
   filter->status++;
   break;
  case 0x10:
  case 0x21:
  case 0x32:
   filter->status = 0;
   break;
  default:
   filter->flag = 1;
   filter->status = 0;
   break;
  }
 } else if (c < 0xc2) {
  filter->flag = 1;
  filter->status = 0;
 } else {
  if (filter->status) {
   filter->flag = 1;
  }
  filter->status = 0;
  if (c < 0xe0) {
   filter->status = 0x10;
  } else if (c < 0xf0) {
   filter->status = 0x20;
   filter->status |= (c & 0xf) << 8;
  } else if (c < 0xf5) {
   filter->status = 0x30;
   filter->status |= (c & 0x7) << 8;
  } else {
   filter->flag = 1;
  }
 }

 return c;
}
