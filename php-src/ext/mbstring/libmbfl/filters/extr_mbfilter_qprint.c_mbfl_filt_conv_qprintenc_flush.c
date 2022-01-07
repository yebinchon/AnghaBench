
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; scalar_t__ cache; int (* filter_function ) (char,TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int stub1 (char,TYPE_1__*) ;

int mbfl_filt_conv_qprintenc_flush(mbfl_convert_filter *filter)
{

 (*filter->filter_function)('\0', filter);
 filter->status &= ~0xffff;
 filter->cache = 0;
 return 0;
}
