
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_texture {int dummy; } ;
struct wined3d_resource {int dummy; } ;
struct wined3d_device {size_t context_count; struct wined3d_context** contexts; int d3d_initialized; } ;
struct TYPE_2__ {int sub_resource_idx; struct wined3d_texture* texture; } ;
struct wined3d_context {TYPE_1__ current_rt; } ;
typedef enum wined3d_resource_type { ____Placeholder_wined3d_resource_type } wined3d_resource_type ;
typedef size_t UINT ;




 struct wined3d_texture* texture_from_resource (struct wined3d_resource*) ;

void context_resource_released(const struct wined3d_device *device,
        struct wined3d_resource *resource, enum wined3d_resource_type type)
{
    struct wined3d_texture *texture;
    UINT i;

    if (!device->d3d_initialized)
        return;

    switch (type)
    {
        case 129:
        case 128:
            texture = texture_from_resource(resource);

            for (i = 0; i < device->context_count; ++i)
            {
                struct wined3d_context *context = device->contexts[i];
                if (context->current_rt.texture == texture)
                {
                    context->current_rt.texture = ((void*)0);
                    context->current_rt.sub_resource_idx = 0;
                }
            }
            break;

        default:
            break;
    }
}
