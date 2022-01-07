
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



__attribute__((used)) static int mbfl_filt_ident_ascii(int c, mbfl_identify_filter *filter)
{
 if (c >= 0x20 && c < 0x80) {
  ;
 } else if (c == 0x0d || c == 0x0a || c == 0x09 || c == 0) {
  ;
 } else {
  filter->flag = 1;
 }

 return c;
}
