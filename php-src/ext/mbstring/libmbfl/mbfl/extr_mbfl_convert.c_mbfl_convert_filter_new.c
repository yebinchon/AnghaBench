
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbfl_convert_vtbl {int dummy; } ;
typedef int mbfl_encoding ;
typedef int mbfl_convert_filter ;


 scalar_t__ mbfl_convert_filter_common_init (int *,int const*,int const*,struct mbfl_convert_vtbl const*,int (*) (int,void*),int (*) (void*),void*) ;
 struct mbfl_convert_vtbl* mbfl_convert_filter_get_vtbl (int const*,int const*) ;
 int mbfl_free (int *) ;
 scalar_t__ mbfl_malloc (int) ;

mbfl_convert_filter *
mbfl_convert_filter_new(
    const mbfl_encoding *from,
    const mbfl_encoding *to,
    int (*output_function)(int, void* ),
    int (*flush_function)(void*),
    void* data)
{
 mbfl_convert_filter * filter;
 const struct mbfl_convert_vtbl *vtbl;

 vtbl = mbfl_convert_filter_get_vtbl(from, to);
 if (vtbl == ((void*)0)) {
  return ((void*)0);
 }


 filter = (mbfl_convert_filter *)mbfl_malloc(sizeof(mbfl_convert_filter));
 if (filter == ((void*)0)) {
  return ((void*)0);
 }

 if (mbfl_convert_filter_common_init(filter, from, to, vtbl,
   output_function, flush_function, data)) {
  mbfl_free(filter);
  return ((void*)0);
 }

 return filter;
}
