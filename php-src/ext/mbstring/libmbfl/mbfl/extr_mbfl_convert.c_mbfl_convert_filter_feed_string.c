
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* filter_function ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 scalar_t__ stub1 (int ,TYPE_1__*) ;

int
mbfl_convert_filter_feed_string(mbfl_convert_filter *filter, const unsigned char *p, size_t len) {
 while (len > 0) {
  if ((*filter->filter_function)(*p++, filter) < 0) {
   return -1;
  }
  len--;
 }
 return 0;
}
