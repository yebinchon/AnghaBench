
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbfl_convert_vtbl {int filter_copy; int filter_flush; int filter_function; int filter_dtor; int (* filter_ctor ) (TYPE_1__*) ;} ;
typedef int mbfl_encoding ;
struct TYPE_4__ {int (* output_function ) (int,void*) ;int (* flush_function ) (void*) ;int illegal_substchar; int (* filter_ctor ) (TYPE_1__*) ;int filter_copy; int filter_flush; int filter_function; int filter_dtor; scalar_t__ num_illegalchar; int illegal_mode; void* data; int const* to; int const* from; } ;
typedef TYPE_1__ mbfl_convert_filter ;


 int MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR ;
 int mbfl_filter_output_null (int,void*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int
mbfl_convert_filter_common_init(
 mbfl_convert_filter *filter,
 const mbfl_encoding *from,
 const mbfl_encoding *to,
 const struct mbfl_convert_vtbl *vtbl,
    int (*output_function)(int, void* ),
    int (*flush_function)(void*),
    void* data)
{

 filter->from = from;
 filter->to = to;

 if (output_function != ((void*)0)) {
  filter->output_function = output_function;
 } else {
  filter->output_function = mbfl_filter_output_null;
 }

 filter->flush_function = flush_function;
 filter->data = data;
 filter->illegal_mode = MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR;
 filter->illegal_substchar = 0x3f;
 filter->num_illegalchar = 0;
 filter->filter_ctor = vtbl->filter_ctor;
 filter->filter_dtor = vtbl->filter_dtor;
 filter->filter_function = vtbl->filter_function;
 filter->filter_flush = vtbl->filter_flush;
 filter->filter_copy = vtbl->filter_copy;

 (*filter->filter_ctor)(filter);

 return 0;
}
