
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_device {unsigned int context_count; TYPE_2__** contexts; TYPE_1__* shader_backend; } ;
struct wined3d_cs {int state; struct wined3d_device* device; } ;
typedef enum wined3d_push_constants { ____Placeholder_wined3d_push_constants } wined3d_push_constants ;
struct TYPE_6__ {unsigned int offset; unsigned int size; int mask; } ;
struct TYPE_5__ {int constant_update_mask; } ;
struct TYPE_4__ {int (* shader_update_float_pixel_constants ) (struct wined3d_device*,unsigned int,unsigned int) ;int (* shader_update_float_vertex_constants ) (struct wined3d_device*,unsigned int,unsigned int) ;} ;
typedef int BYTE ;


 int WINED3D_PUSH_CONSTANTS_PS_F ;
 int WINED3D_PUSH_CONSTANTS_VS_F ;
 int memcpy (int *,void const*,unsigned int) ;
 int stub1 (struct wined3d_device*,unsigned int,unsigned int) ;
 int stub2 (struct wined3d_device*,unsigned int,unsigned int) ;
 TYPE_3__* wined3d_cs_push_constant_info ;

__attribute__((used)) static void wined3d_cs_st_push_constants(struct wined3d_cs *cs, enum wined3d_push_constants p,
        unsigned int start_idx, unsigned int count, const void *constants)
{
    struct wined3d_device *device = cs->device;
    unsigned int context_count;
    unsigned int i;
    size_t offset;

    if (p == WINED3D_PUSH_CONSTANTS_VS_F)
        device->shader_backend->shader_update_float_vertex_constants(device, start_idx, count);
    else if (p == WINED3D_PUSH_CONSTANTS_PS_F)
        device->shader_backend->shader_update_float_pixel_constants(device, start_idx, count);

    offset = wined3d_cs_push_constant_info[p].offset + start_idx * wined3d_cs_push_constant_info[p].size;
    memcpy((BYTE *)&cs->state + offset, constants, count * wined3d_cs_push_constant_info[p].size);
    for (i = 0, context_count = device->context_count; i < context_count; ++i)
    {
        device->contexts[i]->constant_update_mask |= wined3d_cs_push_constant_info[p].mask;
    }
}
