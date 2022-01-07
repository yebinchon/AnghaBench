
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_shader_t ;
struct TYPE_3__ {int * cur_vertex_shader; } ;
typedef TYPE_1__ gs_device_t ;



gs_shader_t *device_get_vertex_shader(const gs_device_t *device)
{
 return device->cur_vertex_shader;
}
