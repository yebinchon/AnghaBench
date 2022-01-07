
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mbfl_identify_vtbl {int filter_function; int filter_dtor; int (* filter_ctor ) (TYPE_1__*) ;} ;
struct TYPE_6__ {int (* filter_ctor ) (TYPE_1__*) ;int filter_function; int filter_dtor; TYPE_2__ const* encoding; scalar_t__ score; scalar_t__ flag; scalar_t__ status; } ;
typedef TYPE_1__ mbfl_identify_filter ;
struct TYPE_7__ {int no_encoding; } ;
typedef TYPE_2__ mbfl_encoding ;


 struct mbfl_identify_vtbl* mbfl_identify_filter_get_vtbl (int ) ;
 int stub1 (TYPE_1__*) ;
 struct mbfl_identify_vtbl vtbl_identify_false ;

int mbfl_identify_filter_init2(mbfl_identify_filter *filter, const mbfl_encoding *encoding)
{
 const struct mbfl_identify_vtbl *vtbl;


 filter->encoding = encoding;

 filter->status = 0;
 filter->flag = 0;
 filter->score = 0;


 vtbl = mbfl_identify_filter_get_vtbl(filter->encoding->no_encoding);
 if (vtbl == ((void*)0)) {
  vtbl = &vtbl_identify_false;
 }
 filter->filter_ctor = vtbl->filter_ctor;
 filter->filter_dtor = vtbl->filter_dtor;
 filter->filter_function = vtbl->filter_function;


 (*filter->filter_ctor)(filter);

 return 0;
}
