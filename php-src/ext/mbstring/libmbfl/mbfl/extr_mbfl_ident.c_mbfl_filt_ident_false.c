
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;
typedef TYPE_1__ mbfl_identify_filter ;



int mbfl_filt_ident_false(int c, mbfl_identify_filter *filter)
{
 filter->flag = 1;
 return c;
}
