
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbfl_identify_vtbl {int encoding; } ;
typedef enum mbfl_no_encoding { ____Placeholder_mbfl_no_encoding } mbfl_no_encoding ;


 struct mbfl_identify_vtbl** mbfl_identify_filter_list ;

const struct mbfl_identify_vtbl * mbfl_identify_filter_get_vtbl(enum mbfl_no_encoding encoding)
{
 const struct mbfl_identify_vtbl * vtbl;
 int i;

 i = 0;
 while ((vtbl = mbfl_identify_filter_list[i++]) != ((void*)0)) {
  if (vtbl->encoding == encoding) {
   break;
  }
 }

 return vtbl;
}
