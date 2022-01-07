
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbfl_identify_filter ;


 int mbfl_free (void*) ;
 int mbfl_identify_filter_cleanup (int *) ;

void mbfl_identify_filter_delete(mbfl_identify_filter *filter)
{
 if (filter == ((void*)0)) {
  return;
 }

 mbfl_identify_filter_cleanup(filter);
 mbfl_free((void*)filter);
}
