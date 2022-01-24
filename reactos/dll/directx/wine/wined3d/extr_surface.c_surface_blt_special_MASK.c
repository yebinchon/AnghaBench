#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int access; TYPE_2__* format; struct wined3d_device* device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_3__ resource; struct wined3d_swapchain* swapchain; } ;
struct wined3d_swapchain {int dummy; } ;
typedef  struct wined3d_surface {struct wined3d_texture* container; } const wined3d_surface ;
struct TYPE_12__ {int /*<<< orphan*/ * render_targets; } ;
struct wined3d_device {TYPE_1__ fb; } ;
struct wined3d_blt_fx {int dummy; } ;
typedef  enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
struct TYPE_15__ {unsigned int right; unsigned int left; unsigned int bottom; unsigned int top; } ;
struct TYPE_13__ {scalar_t__ id; } ;
typedef  TYPE_4__ RECT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  WINED3DERR_INVALIDCALL ; 
 scalar_t__ WINED3DFMT_P8_UINT ; 
 int WINED3D_BLT_DST_CKEY ; 
 int WINED3D_BLT_DST_CKEY_OVERRIDE ; 
 int WINED3D_BLT_SRC_CKEY ; 
 int WINED3D_BLT_SRC_CKEY_OVERRIDE ; 
 int /*<<< orphan*/  WINED3D_OK ; 
 int WINED3D_RESOURCE_ACCESS_GPU ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_surface const*,struct wined3d_surface const*,TYPE_4__ const*,TYPE_4__ const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_surface const*,struct wined3d_surface const*,TYPE_4__ const*,TYPE_4__ const*,int) ; 
 unsigned int FUNC6 (struct wined3d_surface const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__ const*) ; 
 struct wined3d_surface const* FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct wined3d_texture*,unsigned int) ; 
 unsigned int FUNC10 (struct wined3d_texture*,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC11(struct wined3d_surface *dst_surface, const RECT *dst_rect,
        struct wined3d_surface *src_surface, const RECT *src_rect, DWORD flags,
        const struct wined3d_blt_fx *fx, enum wined3d_texture_filter_type filter)
{
    struct wined3d_texture *dst_texture = dst_surface->container;
    struct wined3d_device *device = dst_texture->resource.device;
    const struct wined3d_surface *rt = FUNC8(device->fb.render_targets[0]);
    struct wined3d_swapchain *src_swapchain, *dst_swapchain;
    struct wined3d_texture *src_texture;

    FUNC1("dst_surface %p, dst_rect %s, src_surface %p, src_rect %s, flags %#x, fx %p, filter %s.\n",
            dst_surface, FUNC7(dst_rect), src_surface, FUNC7(src_rect),
            flags, fx, FUNC3(filter));

    /* Get the swapchain. One of the surfaces has to be a primary surface. */
    if (!(dst_texture->resource.access & WINED3D_RESOURCE_ACCESS_GPU))
    {
        FUNC2("Destination resource is not GPU accessible, rejecting GL blit.\n");
        return WINED3DERR_INVALIDCALL;
    }

    dst_swapchain = dst_texture->swapchain;

    if (src_surface)
    {
        src_texture = src_surface->container;
        if (!(src_texture->resource.access & WINED3D_RESOURCE_ACCESS_GPU))
        {
            FUNC2("Source resource is not GPU accessible, rejecting GL blit.\n");
            return WINED3DERR_INVALIDCALL;
        }

        src_swapchain = src_texture->swapchain;
    }
    else
    {
        src_texture = NULL;
        src_swapchain = NULL;
    }

    /* Early sort out of cases where no render target is used */
    if (!dst_swapchain && !src_swapchain && src_surface != rt && dst_surface != rt)
    {
        FUNC1("No surface is render target, not using hardware blit.\n");
        return WINED3DERR_INVALIDCALL;
    }

    /* No destination color keying supported */
    if (flags & (WINED3D_BLT_DST_CKEY | WINED3D_BLT_DST_CKEY_OVERRIDE))
    {
        /* Can we support that with glBlendFunc if blitting to the frame buffer? */
        FUNC1("Destination color key not supported in accelerated Blit, falling back to software\n");
        return WINED3DERR_INVALIDCALL;
    }

    if (dst_swapchain && dst_swapchain == src_swapchain)
    {
        FUNC0("Implement hardware blit between two surfaces on the same swapchain\n");
        return WINED3DERR_INVALIDCALL;
    }

    if (dst_swapchain && src_swapchain)
    {
        FUNC0("Implement hardware blit between two different swapchains\n");
        return WINED3DERR_INVALIDCALL;
    }

    if (dst_swapchain)
    {
        /* Handled with regular texture -> swapchain blit */
        if (src_surface == rt)
            FUNC1("Blit from active render target to a swapchain\n");
    }
    else if (src_swapchain && dst_surface == rt)
    {
        FUNC0("Implement blit from a swapchain to the active render target\n");
        return WINED3DERR_INVALIDCALL;
    }

    if ((src_swapchain || src_surface == rt) && !dst_swapchain)
    {
        unsigned int src_level, src_width, src_height;
        /* Blit from render target to texture */
        BOOL stretchx;

        /* P8 read back is not implemented */
        if (src_texture->resource.format->id == WINED3DFMT_P8_UINT
                || dst_texture->resource.format->id == WINED3DFMT_P8_UINT)
        {
            FUNC1("P8 read back not supported by frame buffer to texture blit\n");
            return WINED3DERR_INVALIDCALL;
        }

        if (flags & (WINED3D_BLT_SRC_CKEY | WINED3D_BLT_SRC_CKEY_OVERRIDE))
        {
            FUNC1("Color keying not supported by frame buffer to texture blit\n");
            return WINED3DERR_INVALIDCALL;
            /* Destination color key is checked above */
        }

        if (dst_rect->right - dst_rect->left != src_rect->right - src_rect->left)
            stretchx = TRUE;
        else
            stretchx = FALSE;

        /* Blt is a pretty powerful call, while glCopyTexSubImage2D is not. glCopyTexSubImage cannot
         * flip the image nor scale it.
         *
         * -> If the app asks for an unscaled, upside down copy, just perform one glCopyTexSubImage2D call
         * -> If the app wants an image width an unscaled width, copy it line per line
         * -> If the app wants an image that is scaled on the x axis, and the destination rectangle is smaller
         *    than the frame buffer, draw an upside down scaled image onto the fb, read it back and restore the
         *    back buffer. This is slower than reading line per line, thus not used for flipping
         * -> If the app wants a scaled image with a dest rect that is bigger than the fb, it has to be copied
         *    pixel by pixel. */
        src_level = FUNC6(src_surface) % src_texture->level_count;
        src_width = FUNC10(src_texture, src_level);
        src_height = FUNC9(src_texture, src_level);
        if (!stretchx || dst_rect->right - dst_rect->left > src_width
                || dst_rect->bottom - dst_rect->top > src_height)
        {
            FUNC1("No stretching in x direction, using direct framebuffer -> texture copy.\n");
            FUNC4(dst_surface, src_surface, src_rect, dst_rect, filter);
        }
        else
        {
            FUNC1("Using hardware stretching to flip / stretch the texture.\n");
            FUNC5(dst_surface, src_surface, src_rect, dst_rect, filter);
        }

        return WINED3D_OK;
    }

    /* Default: Fall back to the generic blt. Not an error, a TRACE is enough */
    FUNC1("Didn't find any usable render target setup for hw blit, falling back to software\n");
    return WINED3DERR_INVALIDCALL;
}