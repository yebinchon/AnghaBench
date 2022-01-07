
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos; scalar_t__ length; int allocsz; unsigned int* buffer; } ;
typedef TYPE_1__ mbfl_wchar_device ;


 int SIZE_MAX ;
 scalar_t__ mbfl_realloc (void*,size_t) ;

int
mbfl_wchar_device_output(int c, void *data)
{
 mbfl_wchar_device *device = (mbfl_wchar_device *)data;

 if (device->pos >= device->length) {

  size_t newlen;
  unsigned int *tmp;

  if (device->length > SIZE_MAX - device->allocsz) {

   return -1;
  }

  newlen = device->length + device->allocsz;
  if (newlen > SIZE_MAX / sizeof(int)) {

   return -1;
  }

  tmp = (unsigned int *)mbfl_realloc((void *)device->buffer, newlen*sizeof(int));
  if (tmp == ((void*)0)) {
   return -1;
  }
  device->length = newlen;
  device->buffer = tmp;
 }

 device->buffer[device->pos++] = c;

 return c;
}
