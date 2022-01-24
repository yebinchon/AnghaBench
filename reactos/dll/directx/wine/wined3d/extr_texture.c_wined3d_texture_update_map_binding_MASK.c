#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ map_binding; struct wined3d_device* device; } ;
struct wined3d_texture {unsigned int level_count; unsigned int layer_count; scalar_t__ update_map_binding; TYPE_2__ resource; TYPE_1__* sub_resources; } ;
struct wined3d_device {scalar_t__ d3d_initialized; } ;
struct wined3d_context {struct wined3d_context* gl_info; } ;
struct TYPE_3__ {scalar_t__ locations; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ WINED3D_LOCATION_BUFFER ; 
 struct wined3d_context* FUNC1 (struct wined3d_device const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_texture*,unsigned int,struct wined3d_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_texture*,unsigned int,struct wined3d_context*) ; 

__attribute__((used)) static void FUNC6(struct wined3d_texture *texture)
{
    unsigned int sub_count = texture->level_count * texture->layer_count;
    const struct wined3d_device *device = texture->resource.device;
    DWORD map_binding = texture->update_map_binding;
    struct wined3d_context *context = NULL;
    unsigned int i;

    if (device->d3d_initialized)
        context = FUNC1(device, NULL, 0);

    for (i = 0; i < sub_count; ++i)
    {
        if (texture->sub_resources[i].locations == texture->resource.map_binding
                && !FUNC4(texture, i, context, map_binding))
            FUNC0("Failed to load location %s.\n", FUNC3(map_binding));
        if (texture->resource.map_binding == WINED3D_LOCATION_BUFFER)
#if !defined(STAGING_CSMT)
            FUNC5(texture, i, context->gl_info);
#else  /* STAGING_CSMT */
            wined3d_texture_remove_buffer_object(texture, i, context);
#endif /* STAGING_CSMT */
    }

    if (context)
        FUNC2(context);

    texture->resource.map_binding = map_binding;
    texture->update_map_binding = 0;
}