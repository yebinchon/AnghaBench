
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



int mbfl_filt_ident_2022jpms(int c, mbfl_identify_filter *filter)
{
retry:
 switch (filter->status & 0xf) {





 case 0:
  if (c == 0x1b) {
   filter->status += 2;
  } else if ((filter->status == 0x80 || filter->status == 0xa0) && c > 0x20 && c < 0x80) {
   filter->status += 1;
  } else if (c >= 0 && c < 0x80) {
   ;
  } else {
   filter->flag = 1;
  }
  break;



 case 1:
  filter->status &= ~0xf;
  if (c == 0x1b) {
   goto retry;
  } else if (c < 0x21 || c > 0x7e) {
   filter->flag = 1;
  }
  break;


 case 2:
  if (c == 0x24) {
   filter->status++;
  } else if (c == 0x28) {
   filter->status += 3;
  } else {
   filter->flag = 1;
   filter->status &= ~0xf;
   goto retry;
  }
  break;


 case 3:
  if (c == 0x40 || c == 0x42) {
   filter->status = 0x80;
  } else if (c == 0x28) {
   filter->status++;
  } else {
   filter->flag = 1;
   filter->status &= ~0xf;
   goto retry;
  }
  break;


 case 4:
  if (c == 0x40 || c == 0x42) {
   filter->status = 0x80;
  } else if (c == 0x3f) {
   filter->status = 0xa0;
  } else {
   filter->flag = 1;
   filter->status &= ~0xf;
   goto retry;
  }
  break;


 case 5:
  if (c == 0x42) {
   filter->status = 0;
  } else if (c == 0x4a) {
   filter->status = 0;
  } else if (c == 0x49) {
   filter->status = 0x20;
  } else {
   filter->flag = 1;
   filter->status &= ~0xf;
   goto retry;
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
