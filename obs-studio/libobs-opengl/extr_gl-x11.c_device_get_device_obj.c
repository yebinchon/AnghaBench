
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* plat; } ;
typedef TYPE_2__ gs_device_t ;
struct TYPE_4__ {void* context; } ;



void *device_get_device_obj(gs_device_t *device)
{
 return device->plat->context;
}
