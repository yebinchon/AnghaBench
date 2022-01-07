
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* filter_function ) (int,TYPE_1__*) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;
struct TYPE_7__ {TYPE_1__* filter1; } ;
typedef TYPE_2__ mbfl_buffer_converter ;


 int stub1 (int,TYPE_1__*) ;

int
mbfl_buffer_converter_strncat(mbfl_buffer_converter *convd, const unsigned char *p, size_t n)
{
 mbfl_convert_filter *filter;
 int (*filter_function)(int c, mbfl_convert_filter *filter);

 if (convd != ((void*)0) && p != ((void*)0)) {
  filter = convd->filter1;
  if (filter != ((void*)0)) {
   filter_function = filter->filter_function;
   while (n > 0) {
    if ((*filter_function)(*p++, filter) < 0) {
     break;
    }
    n--;
   }
  }
 }

 return n;
}
