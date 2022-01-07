
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbfl_convert_vtbl {int to; int from; } ;
typedef int mbfl_encoding ;
typedef int mbfl_convert_filter ;


 scalar_t__ mbfl_convert_filter_common_init (int *,int const*,int const*,struct mbfl_convert_vtbl const*,int (*) (int,void*),int (*) (void*),void*) ;
 int mbfl_free (int *) ;
 scalar_t__ mbfl_malloc (int) ;
 int * mbfl_no2encoding (int ) ;
 struct mbfl_convert_vtbl vtbl_pass ;

mbfl_convert_filter *
mbfl_convert_filter_new2(
 const struct mbfl_convert_vtbl *vtbl,
    int (*output_function)(int, void* ),
    int (*flush_function)(void*),
    void* data)
{
 mbfl_convert_filter * filter;
 const mbfl_encoding *from_encoding, *to_encoding;

 if (vtbl == ((void*)0)) {
  vtbl = &vtbl_pass;
 }

 from_encoding = mbfl_no2encoding(vtbl->from);
 to_encoding = mbfl_no2encoding(vtbl->to);


 filter = (mbfl_convert_filter *)mbfl_malloc(sizeof(mbfl_convert_filter));
 if (filter == ((void*)0)) {
  return ((void*)0);
 }

 if (mbfl_convert_filter_common_init(filter, from_encoding, to_encoding, vtbl,
   output_function, flush_function, data)) {
  mbfl_free(filter);
  return ((void*)0);
 }

 return filter;
}
