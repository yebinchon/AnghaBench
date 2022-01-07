
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cur_cull_mode; } ;
typedef TYPE_1__ gs_device_t ;
typedef enum gs_cull_mode { ____Placeholder_gs_cull_mode } gs_cull_mode ;



enum gs_cull_mode device_get_cull_mode(const gs_device_t *device)
{
 return device->cur_cull_mode;
}
