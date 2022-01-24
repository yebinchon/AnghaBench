#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  map_binding; } ;
struct wined3d_texture {unsigned int level_count; TYPE_1__ resource; } ;
struct wined3d_cs_add_dirty_texture_region {unsigned int layer; struct wined3d_texture* texture; } ;
struct wined3d_cs {int /*<<< orphan*/  device; } ;
struct wined3d_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct wined3d_context* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_texture*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_add_dirty_texture_region *op = data;
    struct wined3d_texture *texture = op->texture;
    unsigned int sub_resource_idx, i;
    struct wined3d_context *context;

    context = FUNC1(cs->device, NULL, 0);
    sub_resource_idx = op->layer * texture->level_count;
    for (i = 0; i < texture->level_count; ++i, ++sub_resource_idx)
    {
        if (FUNC6(texture, sub_resource_idx, context, texture->resource.map_binding))
            FUNC5(texture, sub_resource_idx, ~texture->resource.map_binding);
        else
            FUNC0("Failed to load location %s.\n", FUNC3(texture->resource.map_binding));
    }
    FUNC2(context);

    FUNC4(&texture->resource);
}