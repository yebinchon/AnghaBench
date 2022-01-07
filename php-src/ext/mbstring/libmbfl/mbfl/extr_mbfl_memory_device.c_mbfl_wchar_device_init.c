
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocsz; scalar_t__ pos; scalar_t__ length; int * buffer; } ;
typedef TYPE_1__ mbfl_wchar_device ;


 int MBFL_MEMORY_DEVICE_ALLOC_SIZE ;

void
mbfl_wchar_device_init(mbfl_wchar_device *device)
{
 if (device) {
  device->buffer = ((void*)0);
  device->length = 0;
  device->pos= 0;
  device->allocsz = MBFL_MEMORY_DEVICE_ALLOC_SIZE;
 }
}
