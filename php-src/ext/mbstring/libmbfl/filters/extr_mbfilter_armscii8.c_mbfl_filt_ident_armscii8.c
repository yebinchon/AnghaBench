
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;


 int armscii8_ucs_table_min ;

__attribute__((used)) static int mbfl_filt_ident_armscii8(int c, mbfl_identify_filter *filter)
{
 if (c >= armscii8_ucs_table_min && c <= 0xff)
  filter->flag = 0;
 else
  filter->flag = 1;
 return c;
}
