
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* buffer; size_t pos; } ;
typedef TYPE_1__ mbfl_memory_device ;
struct TYPE_7__ {scalar_t__ (* filter_function ) (int ,TYPE_2__*) ;} ;
typedef TYPE_2__ mbfl_convert_filter ;


 scalar_t__ stub1 (int ,TYPE_2__*) ;

int mbfl_convert_filter_devcat(mbfl_convert_filter *filter, mbfl_memory_device *src)
{
 size_t n;
 unsigned char *p;

 p = src->buffer;
 n = src->pos;
 while (n > 0) {
  if ((*filter->filter_function)(*p++, filter) < 0) {
   return -1;
  }
  n--;
 }

 return 0;
}
