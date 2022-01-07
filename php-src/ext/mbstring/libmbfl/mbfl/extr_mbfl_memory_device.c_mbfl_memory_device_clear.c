
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pos; scalar_t__ length; int * buffer; } ;
typedef TYPE_1__ mbfl_memory_device ;


 int mbfl_free (int *) ;

void
mbfl_memory_device_clear(mbfl_memory_device *device)
{
 if (device) {
  if (device->buffer) {
   mbfl_free(device->buffer);
  }
  device->buffer = ((void*)0);
  device->length = 0;
  device->pos = 0;
 }
}
