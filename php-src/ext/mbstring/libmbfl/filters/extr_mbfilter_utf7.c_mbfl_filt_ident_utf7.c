
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



__attribute__((used)) static int mbfl_filt_ident_utf7(int c, mbfl_identify_filter *filter)
{
 int n;

 switch (filter->status) {

 case 0:
  if (c == 0x2b) {
   filter->status++;
  } else if (c == 0x5c || c == 0x7e || c < 0 || c > 0x7f) {
   filter->flag = 1;
  }
  break;


 case 1:
 case 2:
  n = 0;
  if (c >= 0x41 && c <= 0x5a) {
   n = 1;
  } else if (c >= 0x61 && c <= 0x7a) {
   n = 1;
  } else if (c >= 0x30 && c <= 0x39) {
   n = 1;
  } else if (c == 0x2b) {
   n = 1;
  } else if (c == 0x2f) {
   n = 1;
  }
  if (n <= 0) {
   if (filter->status == 1 && c != 0x2d) {
    filter->flag = 1;
   } else if (c < 0 || c > 0x7f) {
    filter->flag = 1;
   }
   filter->status = 0;
  } else {
   filter->status = 2;
  }
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
