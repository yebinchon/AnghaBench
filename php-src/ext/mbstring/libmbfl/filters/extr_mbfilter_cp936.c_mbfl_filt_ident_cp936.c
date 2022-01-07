
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



__attribute__((used)) static int mbfl_filt_ident_cp936(int c, mbfl_identify_filter *filter)
{
 if (filter->status) {
  if (c < 0x40 || c > 0xfe || c == 0x7f) {
      filter->flag = 1;
  }
  filter->status = 0;
 } else if (c >= 0 && c < 0x80) {
  ;
 } else if (c > 0x80 && c < 0xff) {
  filter->status = 1;
 } else {
  filter->flag = 1;
 }

 return c;
}
