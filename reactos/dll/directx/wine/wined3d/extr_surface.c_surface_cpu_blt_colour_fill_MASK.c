#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int map_binding; } ;
struct wined3d_texture {int level_count; TYPE_3__* sub_resources; TYPE_2__ resource; } ;
struct wined3d_rendertarget_view {int format_flags; int sub_resource_idx; TYPE_4__* resource; TYPE_5__* format; } ;
struct wined3d_map_desc {int row_pitch; int slice_pitch; int* data; } ;
struct wined3d_device {scalar_t__ d3d_initialized; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_color {int dummy; } ;
struct wined3d_box {unsigned int right; int left; unsigned int bottom; int top; int front; } ;
struct wined3d_bo_address {int dummy; } ;
typedef  int c ;
typedef  int WORD ;
struct TYPE_11__ {scalar_t__ id; unsigned int byte_count; int block_height; int block_width; int block_byte_count; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__* format; struct wined3d_device* device; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; } ;
struct TYPE_7__ {scalar_t__ id; } ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (char*,struct wined3d_rendertarget_view*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WINED3DFMT_FLAG_BLOCKS ; 
 int /*<<< orphan*/  WINED3D_MAP_WRITE ; 
 scalar_t__ WINED3D_RTYPE_BUFFER ; 
 struct wined3d_context* FUNC3 (struct wined3d_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC4 (struct wined3d_context*,struct wined3d_bo_address*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*,struct wined3d_bo_address*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_box const*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_color const*) ; 
 unsigned int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,unsigned int) ; 
 struct wined3d_texture* FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (TYPE_5__*,struct wined3d_color const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_texture*,int,struct wined3d_bo_address*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_texture*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct wined3d_texture*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct wined3d_texture*,int,struct wined3d_context*,int) ; 

__attribute__((used)) static void FUNC19(struct wined3d_rendertarget_view *view,
        const struct wined3d_box *box, const struct wined3d_color *colour)
{
    struct wined3d_device *device = view->resource->device;
    struct wined3d_context *context = NULL;
    struct wined3d_texture *texture;
    struct wined3d_bo_address data;
    unsigned int x, y, w, h, bpp;
    struct wined3d_map_desc map;
    DWORD map_binding;
    BYTE *row;
    DWORD c;

    FUNC2("view %p, box %s, colour %s.\n", view, FUNC7(box), FUNC8(colour));

    if (view->format_flags & WINED3DFMT_FLAG_BLOCKS)
    {
        FUNC1("Not implemented for format %s.\n", FUNC9(view->format->id));
        return;
    }

    if (view->format->id != view->resource->format->id)
        FUNC1("View format %s doesn't match resource format %s.\n",
                FUNC9(view->format->id), FUNC9(view->resource->format->id));

    if (view->resource->type == WINED3D_RTYPE_BUFFER)
    {
        FUNC1("Not implemented for buffers.\n");
        return;
    }

    if (device->d3d_initialized)
        context = FUNC3(device, NULL, 0);

    c = FUNC13(view->format, colour);
    bpp = view->format->byte_count;
    w = box->right - box->left;
    h = box->bottom - box->top;

    texture = FUNC11(view->resource);
    map_binding = texture->resource.map_binding;
    if (!FUNC18(texture, view->sub_resource_idx, context, map_binding))
        FUNC0("Failed to load the sub-resource into %s.\n", FUNC12(map_binding));
    FUNC17(texture, view->sub_resource_idx, ~map_binding);
    FUNC16(texture, view->sub_resource_idx % texture->level_count,
            &map.row_pitch, &map.slice_pitch);
    FUNC15(texture, view->sub_resource_idx, &data, map_binding);
    map.data = FUNC4(context, &data,
            texture->sub_resources[view->sub_resource_idx].size, GL_PIXEL_UNPACK_BUFFER, WINED3D_MAP_WRITE);
    map.data = (BYTE *)map.data
            + (box->front * map.slice_pitch)
            + ((box->top / view->format->block_height) * map.row_pitch)
            + ((box->left / view->format->block_width) * view->format->block_byte_count);

    switch (bpp)
    {
        case 1:
            for (x = 0; x < w; ++x)
            {
                ((BYTE *)map.data)[x] = c;
            }
            break;

        case 2:
            for (x = 0; x < w; ++x)
            {
                ((WORD *)map.data)[x] = c;
            }
            break;

        case 3:
        {
            row = map.data;
            for (x = 0; x < w; ++x, row += 3)
            {
                row[0] = (c      ) & 0xff;
                row[1] = (c >>  8) & 0xff;
                row[2] = (c >> 16) & 0xff;
            }
            break;
        }
        case 4:
            for (x = 0; x < w; ++x)
            {
                ((DWORD *)map.data)[x] = c;
            }
            break;

        default:
            FUNC1("Not implemented for bpp %u.\n", bpp);
            FUNC14(view->resource, view->sub_resource_idx);
            return;
    }

    row = map.data;
    for (y = 1; y < h; ++y)
    {
        row += map.row_pitch;
        FUNC10(row, map.data, w * bpp);
    }

    FUNC6(context, &data, GL_PIXEL_UNPACK_BUFFER);
    if (context)
        FUNC5(context);
}