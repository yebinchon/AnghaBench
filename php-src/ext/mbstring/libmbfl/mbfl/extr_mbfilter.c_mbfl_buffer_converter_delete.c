
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; scalar_t__ filter2; scalar_t__ filter1; } ;
typedef TYPE_1__ mbfl_buffer_converter ;


 int mbfl_convert_filter_delete (scalar_t__) ;
 int mbfl_free (void*) ;
 int mbfl_memory_device_clear (int *) ;

void
mbfl_buffer_converter_delete(mbfl_buffer_converter *convd)
{
 if (convd != ((void*)0)) {
  if (convd->filter1) {
   mbfl_convert_filter_delete(convd->filter1);
  }
  if (convd->filter2) {
   mbfl_convert_filter_delete(convd->filter2);
  }
  mbfl_memory_device_clear(&convd->device);
  mbfl_free((void*)convd);
 }
}
