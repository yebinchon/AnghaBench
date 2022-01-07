
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



__attribute__((used)) static int mbfl_filt_ident_hz(int c, mbfl_identify_filter *filter)
{
 switch (filter->status & 0xf) {


 case 0:
  if (c == 0x7e) {
   filter->status += 2;
  } else if (filter->status == 0x10 && c > 0x20 && c < 0x7f) {
   filter->status += 1;
  } else if (c >= 0 && c < 0x80) {
   ;
  } else {
   filter->flag = 1;
  }
  break;


 case 1:
  filter->status &= ~0xf;
  if (c < 0x21 || c > 0x7e) {
   filter->flag = 1;
  }
  break;

 case 2:
  if (c == 0x7d) {
   filter->status = 0;
  } else if (c == 0x7b) {
   filter->status = 0x10;
  } else if (c == 0x7e) {
   filter->status = 0;
  } else {
   filter->flag = 1;
   filter->status &= ~0xf;
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
