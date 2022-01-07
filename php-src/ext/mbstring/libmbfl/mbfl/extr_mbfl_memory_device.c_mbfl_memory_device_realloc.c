
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; unsigned char* buffer; size_t allocsz; } ;
typedef TYPE_1__ mbfl_memory_device ;


 size_t MBFL_MEMORY_DEVICE_ALLOC_SIZE ;
 scalar_t__ mbfl_realloc (void*,size_t) ;

void
mbfl_memory_device_realloc(mbfl_memory_device *device, size_t initsz, size_t allocsz)
{
 unsigned char *tmp;

 if (device) {
  if (initsz > device->length) {
   tmp = (unsigned char *)mbfl_realloc((void *)device->buffer, initsz);
   if (tmp != ((void*)0)) {
    device->buffer = tmp;
    device->length = initsz;
   }
  }
  if (allocsz > MBFL_MEMORY_DEVICE_ALLOC_SIZE) {
   device->allocsz = allocsz;
  } else {
   device->allocsz = MBFL_MEMORY_DEVICE_ALLOC_SIZE;
  }
 }
}
