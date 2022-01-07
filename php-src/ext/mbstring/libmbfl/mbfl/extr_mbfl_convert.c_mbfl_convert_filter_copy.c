
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* filter_copy ) (TYPE_1__*,TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int stub1 (TYPE_1__*,TYPE_1__*) ;

void
mbfl_convert_filter_copy(
    mbfl_convert_filter *src,
    mbfl_convert_filter *dest)
{
 if (src->filter_copy != ((void*)0)) {
  src->filter_copy(src, dest);
  return;
 }

 *dest = *src;
}
