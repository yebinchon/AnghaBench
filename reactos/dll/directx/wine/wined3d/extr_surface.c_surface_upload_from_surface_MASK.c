#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  format; int /*<<< orphan*/  device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_2__ resource; TYPE_1__* sub_resources; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_7__ {int /*<<< orphan*/  locations; } ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_surface*,int /*<<< orphan*/ ,struct wined3d_surface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINED3D_LOCATION_TEXTURE_RGB ; 
 int /*<<< orphan*/  WINED3D_OK ; 
 struct wined3d_context* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*) ; 
 unsigned int FUNC3 (struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_bo_address*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_surface*,struct wined3d_gl_info const*,int /*<<< orphan*/ ,TYPE_3__ const*,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wined3d_texture*,unsigned int) ; 
 scalar_t__ FUNC10 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_texture*,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_texture*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_texture*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC17(struct wined3d_surface *dst_surface, const POINT *dst_point,
        struct wined3d_surface *src_surface, const RECT *src_rect)
{
    unsigned int src_sub_resource_idx = FUNC3(src_surface);
    unsigned int dst_sub_resource_idx = FUNC3(dst_surface);
    struct wined3d_texture *src_texture = src_surface->container;
    struct wined3d_texture *dst_texture = dst_surface->container;
    unsigned int src_row_pitch, src_slice_pitch;
    const struct wined3d_gl_info *gl_info;
    unsigned int src_level, dst_level;
    struct wined3d_context *context;
    struct wined3d_bo_address data;
    UINT update_w, update_h;

    FUNC0("dst_surface %p, dst_point %s, src_surface %p, src_rect %s.\n",
            dst_surface, FUNC4(dst_point),
            src_surface, FUNC5(src_rect));

    context = FUNC1(dst_texture->resource.device, NULL, 0);
    gl_info = context->gl_info;

    /* Only load the surface for partial updates. For newly allocated texture
     * the texture wouldn't be the current location, and we'd upload zeroes
     * just to overwrite them again. */
    update_w = src_rect->right - src_rect->left;
    update_h = src_rect->bottom - src_rect->top;
    dst_level = dst_sub_resource_idx % dst_texture->level_count;
    if (update_w == FUNC10(dst_texture, dst_level)
            && update_h == FUNC9(dst_texture, dst_level))
        FUNC15(dst_texture, context, FALSE);
    else
        FUNC14(dst_texture, dst_sub_resource_idx, context, WINED3D_LOCATION_TEXTURE_RGB);
    FUNC8(dst_texture, context, FALSE);

    src_level = src_sub_resource_idx % src_texture->level_count;
    FUNC11(src_texture, src_sub_resource_idx, &data,
            src_texture->sub_resources[src_sub_resource_idx].locations);
    FUNC12(src_texture, src_level, &src_row_pitch, &src_slice_pitch);

    FUNC7(dst_surface, gl_info, src_texture->resource.format, src_rect,
            src_row_pitch, dst_point, FALSE, FUNC6(&data));

    FUNC2(context);

    FUNC16(dst_texture, dst_sub_resource_idx, WINED3D_LOCATION_TEXTURE_RGB);
    FUNC13(dst_texture, dst_sub_resource_idx, ~WINED3D_LOCATION_TEXTURE_RGB);

    return WINED3D_OK;
}