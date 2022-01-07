
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; unsigned char* buffer; size_t allocsz; scalar_t__ pos; } ;
typedef TYPE_1__ mbfl_memory_device ;


 size_t MBFL_MEMORY_DEVICE_ALLOC_SIZE ;
 scalar_t__ mbfl_malloc (size_t) ;

void
mbfl_memory_device_init(mbfl_memory_device *device, size_t initsz, size_t allocsz)
{
 if (device) {
  device->length = 0;
  device->buffer = ((void*)0);
  if (initsz > 0) {
   device->buffer = (unsigned char *)mbfl_malloc(initsz);
   if (device->buffer != ((void*)0)) {
    device->length = initsz;
   }
  }
  device->pos = 0;
  if (allocsz > MBFL_MEMORY_DEVICE_ALLOC_SIZE) {
   device->allocsz = allocsz;
  } else {
   device->allocsz = MBFL_MEMORY_DEVICE_ALLOC_SIZE;
  }
 }
}
