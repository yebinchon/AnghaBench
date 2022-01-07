
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



__attribute__((used)) static int mbfl_filt_ident_euckr(int c, mbfl_identify_filter *filter)
{
 switch (filter->status) {
 case 0:
  if (c >= 0 && c < 0x80) {
   ;
  } else if (c > 0xa0 && c < 0xff) {
   filter->status = 1;
  } else {
   filter->flag = 1;
  }
  break;

 case 1:
  if (c < 0xa1 || c > 0xfe) {
   filter->flag = 1;
  }
  filter->status = 0;
  break;

 default:
  filter->status = 0;
  break;
 }

 return c;
}
