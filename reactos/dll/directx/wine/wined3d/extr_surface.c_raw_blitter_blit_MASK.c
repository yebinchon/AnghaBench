#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* format; } ;
struct wined3d_texture {unsigned int level_count; int flags; int /*<<< orphan*/  target; TYPE_2__ resource; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_color_key {int dummy; } ;
struct wined3d_blitter {TYPE_3__* ops; struct wined3d_blitter* next; } ;
typedef  enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
typedef  enum wined3d_blit_op { ____Placeholder_wined3d_blit_op } wined3d_blit_op ;
struct TYPE_13__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_12__ {int (* blitter_blit ) (struct wined3d_blitter*,int,struct wined3d_context*,struct wined3d_surface*,int,TYPE_4__ const*,struct wined3d_surface*,int,TYPE_4__ const*,struct wined3d_color_key const*,int) ;} ;
struct TYPE_10__ {scalar_t__ id; } ;
typedef  TYPE_4__ RECT ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int WINED3D_BLIT_OP_RAW_BLIT ; 
 int WINED3D_LOCATION_TEXTURE_RGB ; 
 int WINED3D_LOCATION_TEXTURE_SRGB ; 
 int WINED3D_TEXTURE_IS_SRGB ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__,scalar_t__,unsigned int,scalar_t__,scalar_t__,int) ; 
 int FUNC5 (struct wined3d_blitter*,int,struct wined3d_context*,struct wined3d_surface*,int,TYPE_4__ const*,struct wined3d_surface*,int,TYPE_4__ const*,struct wined3d_color_key const*,int) ; 
 unsigned int FUNC6 (struct wined3d_surface*) ; 
 scalar_t__ FUNC7 (struct wined3d_texture*,unsigned int,TYPE_4__ const*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_texture*,struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_texture*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_texture*,unsigned int,struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_texture*,unsigned int,int) ; 

__attribute__((used)) static DWORD FUNC14(struct wined3d_blitter *blitter, enum wined3d_blit_op op,
        struct wined3d_context *context, struct wined3d_surface *src_surface, DWORD src_location,
        const RECT *src_rect, struct wined3d_surface *dst_surface, DWORD dst_location, const RECT *dst_rect,
        const struct wined3d_color_key *colour_key, enum wined3d_texture_filter_type filter)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    unsigned int src_sub_resource_idx, dst_sub_resource_idx;
    unsigned int src_level, src_layer, dst_level, dst_layer;
    struct wined3d_texture *src_texture, *dst_texture;
    struct wined3d_blitter *next;
    GLuint src_name, dst_name;
    DWORD location;

    src_texture = src_surface->container;
    dst_texture = dst_surface->container;

    /* If we would need to copy from a renderbuffer or drawable, we'd probably
     * be better of using the FBO blitter directly, since we'd need to use it
     * to copy the resource contents to the texture anyway. */
    if (op != WINED3D_BLIT_OP_RAW_BLIT
            || (src_texture->resource.format->id == dst_texture->resource.format->id
            && (!(src_location & (WINED3D_LOCATION_TEXTURE_RGB | WINED3D_LOCATION_TEXTURE_SRGB))
            || !(dst_location & (WINED3D_LOCATION_TEXTURE_RGB | WINED3D_LOCATION_TEXTURE_SRGB)))))
    {
        if (!(next = blitter->next))
        {
            FUNC0("No blitter to handle blit op %#x.\n", op);
            return dst_location;
        }

        FUNC2("Forwarding to blitter %p.\n", next);
        return next->ops->blitter_blit(next, op, context, src_surface, src_location,
                src_rect, dst_surface, dst_location, dst_rect, colour_key, filter);
    }

    FUNC2("Blit using ARB_copy_image.\n");

    src_sub_resource_idx = FUNC6(src_surface);
    src_level = src_sub_resource_idx % src_texture->level_count;
    src_layer = src_sub_resource_idx / src_texture->level_count;

    dst_sub_resource_idx = FUNC6(dst_surface);
    dst_level = dst_sub_resource_idx % dst_texture->level_count;
    dst_layer = dst_sub_resource_idx / dst_texture->level_count;

    location = src_location & (WINED3D_LOCATION_TEXTURE_RGB | WINED3D_LOCATION_TEXTURE_SRGB);
    if (!location)
        location = src_texture->flags & WINED3D_TEXTURE_IS_SRGB
                ? WINED3D_LOCATION_TEXTURE_SRGB : WINED3D_LOCATION_TEXTURE_RGB;
    if (!FUNC11(src_texture, src_sub_resource_idx, context, location))
        FUNC0("Failed to load the source sub-resource into %s.\n", FUNC8(location));
    src_name = FUNC9(src_texture, context, location == WINED3D_LOCATION_TEXTURE_SRGB);

    location = dst_location & (WINED3D_LOCATION_TEXTURE_RGB | WINED3D_LOCATION_TEXTURE_SRGB);
    if (!location)
        location = dst_texture->flags & WINED3D_TEXTURE_IS_SRGB
                ? WINED3D_LOCATION_TEXTURE_SRGB : WINED3D_LOCATION_TEXTURE_RGB;
    if (FUNC7(dst_texture, dst_level, dst_rect))
    {
        if (!FUNC12(dst_texture, dst_sub_resource_idx, context, location))
            FUNC0("Failed to prepare the destination sub-resource into %s.\n", FUNC8(location));
    }
    else
    {
        if (!FUNC11(dst_texture, dst_sub_resource_idx, context, location))
            FUNC0("Failed to load the destination sub-resource into %s.\n", FUNC8(location));
    }
    dst_name = FUNC9(dst_texture, context, location == WINED3D_LOCATION_TEXTURE_SRGB);

    FUNC1(FUNC4(src_name, src_texture->target, src_level,
            src_rect->left, src_rect->top, src_layer, dst_name, dst_texture->target, dst_level,
            dst_rect->left, dst_rect->top, dst_layer, src_rect->right - src_rect->left,
            src_rect->bottom - src_rect->top, 1));
    FUNC3("copy image data");

    FUNC13(dst_texture, dst_sub_resource_idx, location);
    FUNC10(dst_texture, dst_sub_resource_idx, ~location);
    if (!FUNC11(dst_texture, dst_sub_resource_idx, context, dst_location))
        FUNC0("Failed to load the destination sub-resource into %s.\n", FUNC8(dst_location));

    return dst_location | location;
}