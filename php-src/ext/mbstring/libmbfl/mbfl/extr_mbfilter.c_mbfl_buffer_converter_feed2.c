
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int len; unsigned char* val; } ;
typedef TYPE_1__ mbfl_string ;
struct TYPE_10__ {int (* filter_function ) (int,TYPE_2__*) ;} ;
typedef TYPE_2__ mbfl_convert_filter ;
struct TYPE_12__ {scalar_t__ pos; } ;
struct TYPE_11__ {TYPE_2__* filter1; TYPE_6__ device; } ;
typedef TYPE_3__ mbfl_buffer_converter ;


 int mbfl_memory_device_realloc (TYPE_6__*,scalar_t__,int) ;
 int stub1 (int,TYPE_2__*) ;

int
mbfl_buffer_converter_feed2(mbfl_buffer_converter *convd, mbfl_string *string, size_t *loc)
{
 size_t n;
 unsigned char *p;
 mbfl_convert_filter *filter;
 int (*filter_function)(int c, mbfl_convert_filter *filter);

 if (convd == ((void*)0) || string == ((void*)0)) {
  return -1;
 }
 mbfl_memory_device_realloc(&convd->device, convd->device.pos + string->len, string->len/4);

 n = string->len;
 p = string->val;

 filter = convd->filter1;
 if (filter != ((void*)0)) {
  filter_function = filter->filter_function;
  while (n > 0) {
   if ((*filter_function)(*p++, filter) < 0) {
    if (loc) {
     *loc = p - string->val;
    }
    return -1;
   }
   n--;
  }
 }
 if (loc) {
  *loc = p - string->val;
 }
 return 0;
}
