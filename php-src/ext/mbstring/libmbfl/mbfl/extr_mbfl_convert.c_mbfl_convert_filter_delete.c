
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* filter_dtor ) (TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int mbfl_free (void*) ;
 int stub1 (TYPE_1__*) ;

void
mbfl_convert_filter_delete(mbfl_convert_filter *filter)
{
 if (filter) {
  (*filter->filter_dtor)(filter);
  mbfl_free((void*)filter);
 }
}
