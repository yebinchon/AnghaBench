
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pos; scalar_t__ buffer; } ;
typedef TYPE_1__ mbfl_memory_device ;


 int mbfl_memory_device_strncat (TYPE_1__*,char const*,int ) ;

int
mbfl_memory_device_devcat(mbfl_memory_device *dest, mbfl_memory_device *src)
{
 return mbfl_memory_device_strncat(dest, (const char *) src->buffer, src->pos);
}
