
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pos; } ;
typedef TYPE_1__ mbfl_memory_device ;



void
mbfl_memory_device_unput(mbfl_memory_device *device)
{
 if (device->pos > 0) {
  device->pos--;
 }
}
