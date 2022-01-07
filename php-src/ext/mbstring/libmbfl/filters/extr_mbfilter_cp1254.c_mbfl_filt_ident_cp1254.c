
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



__attribute__((used)) static int mbfl_filt_ident_cp1254(int c, mbfl_identify_filter *filter)
{
 if (c >= 0x80 && c < 0xff)
  filter->flag = 0;
 else
  filter->flag = 1;
 return c;
}
