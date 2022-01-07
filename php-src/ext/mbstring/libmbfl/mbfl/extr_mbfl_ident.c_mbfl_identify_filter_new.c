
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbfl_identify_filter ;
typedef enum mbfl_no_encoding { ____Placeholder_mbfl_no_encoding } mbfl_no_encoding ;


 int mbfl_free (int *) ;
 scalar_t__ mbfl_identify_filter_init (int *,int) ;
 scalar_t__ mbfl_malloc (int) ;

mbfl_identify_filter *mbfl_identify_filter_new(enum mbfl_no_encoding encoding)
{
 mbfl_identify_filter *filter;


 filter = (mbfl_identify_filter *)mbfl_malloc(sizeof(mbfl_identify_filter));
 if (filter == ((void*)0)) {
  return ((void*)0);
 }

 if (mbfl_identify_filter_init(filter, encoding)) {
  mbfl_free(filter);
  return ((void*)0);
 }

 return filter;
}
