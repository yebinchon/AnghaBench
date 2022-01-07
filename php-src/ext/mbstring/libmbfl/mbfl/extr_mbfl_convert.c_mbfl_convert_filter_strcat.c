
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* filter_function ) (int,TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 scalar_t__ stub1 (int,TYPE_1__*) ;

int mbfl_convert_filter_strcat(mbfl_convert_filter *filter, const unsigned char *p)
{
 int c;

 while ((c = *p++) != '\0') {
  if ((*filter->filter_function)(c, filter) < 0) {
   return -1;
  }
 }

 return 0;
}
