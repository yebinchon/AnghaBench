
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int pos; size_t allocsz; unsigned char* buffer; } ;
typedef TYPE_1__ mbfl_memory_device ;


 int SIZE_MAX ;
 scalar_t__ mbfl_realloc (void*,size_t) ;

int
mbfl_memory_device_output4(int c, void* data)
{
 mbfl_memory_device *device = (mbfl_memory_device *)data;

 if (4 > device->length - device->pos) {

  size_t newlen;
  unsigned char *tmp;

  if (device->length > SIZE_MAX - device->allocsz) {

   return -1;
  }

  newlen = device->length + device->allocsz;
  tmp = (unsigned char *)mbfl_realloc((void *)device->buffer, newlen);
  if (tmp == ((void*)0)) {
   return -1;
  }
  device->length = newlen;
  device->buffer = tmp;
 }

 device->buffer[device->pos++] = (unsigned char)((c >> 24) & 0xff);
 device->buffer[device->pos++] = (unsigned char)((c >> 16) & 0xff);
 device->buffer[device->pos++] = (unsigned char)((c >> 8) & 0xff);
 device->buffer[device->pos++] = (unsigned char)(c & 0xff);

 return c;
}
