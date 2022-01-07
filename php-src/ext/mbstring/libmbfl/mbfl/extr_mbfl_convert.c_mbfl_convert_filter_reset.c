
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mbfl_convert_vtbl {int dummy; } ;
typedef int mbfl_encoding ;
struct TYPE_5__ {int data; int flush_function; int output_function; int (* filter_dtor ) (TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int mbfl_convert_filter_common_init (TYPE_1__*,int const*,int const*,struct mbfl_convert_vtbl const*,int ,int ,int ) ;
 struct mbfl_convert_vtbl* mbfl_convert_filter_get_vtbl (int const*,int const*) ;
 int stub1 (TYPE_1__*) ;
 struct mbfl_convert_vtbl vtbl_pass ;

void mbfl_convert_filter_reset(mbfl_convert_filter *filter,
     const mbfl_encoding *from, const mbfl_encoding *to)
{
 const struct mbfl_convert_vtbl *vtbl;


 (*filter->filter_dtor)(filter);

 vtbl = mbfl_convert_filter_get_vtbl(from, to);

 if (vtbl == ((void*)0)) {
  vtbl = &vtbl_pass;
 }

 mbfl_convert_filter_common_init(filter, from, to, vtbl,
   filter->output_function, filter->flush_function, filter->data);
}
