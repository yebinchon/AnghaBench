
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_unordered_access_view {TYPE_1__* resource; } ;
struct wined3d_texture {int dummy; } ;
struct wined3d_shader {int dummy; } ;
struct wined3d_context {int uses_uavs; } ;
struct wined3d_buffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int FALSE ;
 unsigned int MAX_UNORDERED_ACCESS_VIEWS ;
 int WINED3D_LOCATION_BUFFER ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 scalar_t__ WINED3D_RTYPE_BUFFER ;
 struct wined3d_buffer* buffer_from_resource (TYPE_1__*) ;
 struct wined3d_texture* texture_from_resource (TYPE_1__*) ;
 int wined3d_buffer_load_location (struct wined3d_buffer*,struct wined3d_context*,int ) ;
 int wined3d_texture_load (struct wined3d_texture*,struct wined3d_context*,int ) ;
 int wined3d_unordered_access_view_invalidate_location (struct wined3d_unordered_access_view*,int ) ;

__attribute__((used)) static void context_load_unordered_access_resources(struct wined3d_context *context,
        const struct wined3d_shader *shader, struct wined3d_unordered_access_view * const *views)
{
    struct wined3d_unordered_access_view *view;
    struct wined3d_texture *texture;
    struct wined3d_buffer *buffer;
    unsigned int i;

    context->uses_uavs = 0;

    if (!shader)
        return;

    for (i = 0; i < MAX_UNORDERED_ACCESS_VIEWS; ++i)
    {
        if (!(view = views[i]))
            continue;

        if (view->resource->type == WINED3D_RTYPE_BUFFER)
        {
            buffer = buffer_from_resource(view->resource);
            wined3d_buffer_load_location(buffer, context, WINED3D_LOCATION_BUFFER);
            wined3d_unordered_access_view_invalidate_location(view, ~WINED3D_LOCATION_BUFFER);
        }
        else
        {
            texture = texture_from_resource(view->resource);
            wined3d_texture_load(texture, context, FALSE);
            wined3d_unordered_access_view_invalidate_location(view, ~WINED3D_LOCATION_TEXTURE_RGB);
        }

        context->uses_uavs = 1;
    }
}
