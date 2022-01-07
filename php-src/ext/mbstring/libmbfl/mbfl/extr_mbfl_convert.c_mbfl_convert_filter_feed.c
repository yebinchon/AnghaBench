
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* filter_function ) (int,TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int stub1 (int,TYPE_1__*) ;

int
mbfl_convert_filter_feed(int c, mbfl_convert_filter *filter)
{
 return (*filter->filter_function)(c, filter);
}
