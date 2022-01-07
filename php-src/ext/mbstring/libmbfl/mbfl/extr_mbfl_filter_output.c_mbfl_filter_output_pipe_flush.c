
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* filter_flush ) (TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int stub1 (TYPE_1__*) ;

int mbfl_filter_output_pipe_flush(void *data)
{
 mbfl_convert_filter *filter = (mbfl_convert_filter*)data;
 if (filter->filter_flush != ((void*)0)) {
  return (*filter->filter_flush)(filter);
 }

 return 0;
}
