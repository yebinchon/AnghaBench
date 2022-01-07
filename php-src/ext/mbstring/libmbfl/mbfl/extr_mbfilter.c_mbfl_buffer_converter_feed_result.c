
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int encoding; } ;
typedef TYPE_1__ mbfl_string ;
struct TYPE_12__ {int device; int to; int * filter2; int * filter1; } ;
typedef TYPE_2__ mbfl_buffer_converter ;


 int mbfl_buffer_converter_feed (TYPE_2__*,TYPE_1__*) ;
 int mbfl_convert_filter_flush (int *) ;
 TYPE_1__* mbfl_memory_device_result (int *,TYPE_1__*) ;

mbfl_string *
mbfl_buffer_converter_feed_result(mbfl_buffer_converter *convd, mbfl_string *string,
      mbfl_string *result)
{
 if (convd == ((void*)0) || string == ((void*)0) || result == ((void*)0)) {
  return ((void*)0);
 }
 mbfl_buffer_converter_feed(convd, string);
 if (convd->filter1 != ((void*)0)) {
  mbfl_convert_filter_flush(convd->filter1);
 }
 if (convd->filter2 != ((void*)0)) {
  mbfl_convert_filter_flush(convd->filter2);
 }
 result->encoding = convd->to;
 return mbfl_memory_device_result(&convd->device, result);
}
