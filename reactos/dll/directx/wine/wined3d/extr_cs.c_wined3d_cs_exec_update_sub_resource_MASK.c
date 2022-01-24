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
struct wined3d_texture {unsigned int level_count; } ;
struct wined3d_resource {scalar_t__ type; } ;
struct TYPE_2__ {int /*<<< orphan*/  slice_pitch; int /*<<< orphan*/  row_pitch; int /*<<< orphan*/  data; } ;
struct wined3d_box {unsigned int right; unsigned int bottom; unsigned int back; int /*<<< orphan*/  front; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct wined3d_cs_update_sub_resource {unsigned int sub_resource_idx; TYPE_1__ data; struct wined3d_box box; struct wined3d_resource* resource; } ;
struct wined3d_cs {int /*<<< orphan*/  device; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_const_bo_address {int /*<<< orphan*/  addr; scalar_t__ buffer_object; } ;
struct wined3d_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  WINED3D_LOCATION_BUFFER ; 
 int /*<<< orphan*/  WINED3D_LOCATION_TEXTURE_RGB ; 
 scalar_t__ WINED3D_RTYPE_BUFFER ; 
 struct wined3d_buffer* FUNC1 (struct wined3d_resource*) ; 
 struct wined3d_context* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_buffer*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_buffer*,struct wined3d_context*,struct wined3d_box const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 struct wined3d_texture* FUNC9 (struct wined3d_resource*) ; 
 unsigned int FUNC10 (struct wined3d_texture*,unsigned int) ; 
 unsigned int FUNC11 (struct wined3d_texture*,unsigned int) ; 
 unsigned int FUNC12 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_texture*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_texture*,unsigned int,struct wined3d_context*,struct wined3d_box const*,struct wined3d_const_bo_address*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct wined3d_texture*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_update_sub_resource *op = data;
    struct wined3d_resource *resource = op->resource;
    const struct wined3d_box *box = &op->box;
    unsigned int width, height, depth, level;
    struct wined3d_const_bo_address addr;
    struct wined3d_context *context;
    struct wined3d_texture *texture;

    context = FUNC2(cs->device, NULL, 0);

    if (resource->type == WINED3D_RTYPE_BUFFER)
    {
        struct wined3d_buffer *buffer = FUNC1(resource);

        if (!FUNC5(buffer, context, WINED3D_LOCATION_BUFFER))
        {
            FUNC0("Failed to load buffer location.\n");
            goto done;
        }

        FUNC6(buffer, context, box, op->data.data);
        FUNC4(buffer, ~WINED3D_LOCATION_BUFFER);
        goto done;
    }

    texture = FUNC9(resource);

    level = op->sub_resource_idx % texture->level_count;
    width = FUNC12(texture, level);
    height = FUNC11(texture, level);
    depth = FUNC10(texture, level);

    addr.buffer_object = 0;
    addr.addr = op->data.data;

    /* Only load the sub-resource for partial updates. */
    if (!box->left && !box->top && !box->front
            && box->right == width && box->bottom == height && box->back == depth)
        FUNC15(texture, context, FALSE);
    else
        FUNC14(texture, op->sub_resource_idx, context, WINED3D_LOCATION_TEXTURE_RGB);
    FUNC8(texture, context, FALSE);

    FUNC16(texture, op->sub_resource_idx, context,
            box, &addr, op->data.row_pitch, op->data.slice_pitch);

    FUNC17(texture, op->sub_resource_idx, WINED3D_LOCATION_TEXTURE_RGB);
    FUNC13(texture, op->sub_resource_idx, ~WINED3D_LOCATION_TEXTURE_RGB);

done:
    FUNC3(context);

    FUNC7(resource);
}