
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* flush_function ) (int ) ;int data; int (* filter_flush ) (TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int stub1 (TYPE_1__*) ;
 int stub2 (int ) ;

int
mbfl_convert_filter_flush(mbfl_convert_filter *filter)
{
 (*filter->filter_flush)(filter);
 return (filter->flush_function ? (*filter->flush_function)(filter->data) : 0);
}
