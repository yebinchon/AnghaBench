
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; size_t pos; unsigned char* buffer; } ;
typedef TYPE_1__ mbfl_memory_device ;


 size_t MBFL_MEMORY_DEVICE_ALLOC_SIZE ;
 size_t SIZE_MAX ;
 scalar_t__ mbfl_realloc (void*,size_t) ;
 int memcpy (unsigned char*,char const*,size_t) ;

int
mbfl_memory_device_strncat(mbfl_memory_device *device, const char *psrc, size_t len)
{
 unsigned char *w;

 if (len > device->length - device->pos) {

  size_t newlen;
  unsigned char *tmp;

  if (len > SIZE_MAX - MBFL_MEMORY_DEVICE_ALLOC_SIZE
    || device->length > SIZE_MAX - (len + MBFL_MEMORY_DEVICE_ALLOC_SIZE)) {

   return -1;
  }

  newlen = device->length + len + MBFL_MEMORY_DEVICE_ALLOC_SIZE;
  tmp = (unsigned char *)mbfl_realloc((void *)device->buffer, newlen);
  if (tmp == ((void*)0)) {
   return -1;
  }

  device->length = newlen;
  device->buffer = tmp;
 }

 w = &device->buffer[device->pos];
 memcpy(w, psrc, len);
 device->pos += len;

 return 0;
}
