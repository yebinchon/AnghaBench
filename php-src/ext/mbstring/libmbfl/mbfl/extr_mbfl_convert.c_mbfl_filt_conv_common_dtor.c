
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cache; scalar_t__ status; } ;
typedef TYPE_1__ mbfl_convert_filter ;



void mbfl_filt_conv_common_dtor(mbfl_convert_filter *filter)
{
 filter->status = 0;
 filter->cache = 0;
}
