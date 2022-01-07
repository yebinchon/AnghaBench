
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ map_binding; struct wined3d_device* device; } ;
struct wined3d_texture {unsigned int level_count; unsigned int layer_count; scalar_t__ update_map_binding; TYPE_2__ resource; TYPE_1__* sub_resources; } ;
struct wined3d_device {scalar_t__ d3d_initialized; } ;
struct wined3d_context {struct wined3d_context* gl_info; } ;
struct TYPE_3__ {scalar_t__ locations; } ;
typedef scalar_t__ DWORD ;


 int ERR (char*,int ) ;
 scalar_t__ WINED3D_LOCATION_BUFFER ;
 struct wined3d_context* context_acquire (struct wined3d_device const*,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 int wined3d_debug_location (scalar_t__) ;
 int wined3d_texture_load_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,scalar_t__) ;
 int wined3d_texture_remove_buffer_object (struct wined3d_texture*,unsigned int,struct wined3d_context*) ;

__attribute__((used)) static void wined3d_texture_update_map_binding(struct wined3d_texture *texture)
{
    unsigned int sub_count = texture->level_count * texture->layer_count;
    const struct wined3d_device *device = texture->resource.device;
    DWORD map_binding = texture->update_map_binding;
    struct wined3d_context *context = ((void*)0);
    unsigned int i;

    if (device->d3d_initialized)
        context = context_acquire(device, ((void*)0), 0);

    for (i = 0; i < sub_count; ++i)
    {
        if (texture->sub_resources[i].locations == texture->resource.map_binding
                && !wined3d_texture_load_location(texture, i, context, map_binding))
            ERR("Failed to load location %s.\n", wined3d_debug_location(map_binding));
        if (texture->resource.map_binding == WINED3D_LOCATION_BUFFER)

            wined3d_texture_remove_buffer_object(texture, i, context->gl_info);



    }

    if (context)
        context_release(context);

    texture->resource.map_binding = map_binding;
    texture->update_map_binding = 0;
}
