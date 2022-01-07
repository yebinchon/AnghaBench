
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * filter2; int * filter1; } ;
typedef TYPE_1__ mbfl_buffer_converter ;


 int mbfl_convert_filter_flush (int *) ;

int
mbfl_buffer_converter_flush(mbfl_buffer_converter *convd)
{
 if (convd == ((void*)0)) {
  return -1;
 }

 if (convd->filter1 != ((void*)0)) {
  mbfl_convert_filter_flush(convd->filter1);
 }
 if (convd->filter2 != ((void*)0)) {
  mbfl_convert_filter_flush(convd->filter2);
 }

 return 0;
}
