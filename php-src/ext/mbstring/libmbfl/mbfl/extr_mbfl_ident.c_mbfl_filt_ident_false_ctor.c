
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; scalar_t__ status; } ;
typedef TYPE_1__ mbfl_identify_filter ;



void mbfl_filt_ident_false_ctor(mbfl_identify_filter *filter)
{
 filter->status = 0;
 filter->flag = 1;
}
