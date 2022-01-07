
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_texture_t ;
struct TYPE_3__ {int * cur_render_target; } ;
typedef TYPE_1__ gs_device_t ;



gs_texture_t *device_get_render_target(const gs_device_t *device)
{
 return device->cur_render_target;
}
