#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {int /*<<< orphan*/ * restore_pf_win; scalar_t__ restore_pf; struct wined3d_gl_info* gl_info; } ;
typedef  scalar_t__ HDC ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int DCX_CACHE ; 
 int DCX_USESTYLE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 size_t WGL_WINE_PIXEL_FORMAT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC6(struct wined3d_context *ctx)
{
    const struct wined3d_gl_info *gl_info = ctx->gl_info;
    BOOL ret = FALSE;

    if (ctx->restore_pf && FUNC3(ctx->restore_pf_win))
    {
        if (ctx->gl_info->supported[WGL_WINE_PIXEL_FORMAT_PASSTHROUGH])
        {
            HDC dc = FUNC2(ctx->restore_pf_win, 0, DCX_USESTYLE | DCX_CACHE);
            if (dc)
            {
                if (!(ret = FUNC1(FUNC5(dc, ctx->restore_pf))))
                {
                    FUNC0("wglSetPixelFormatWINE failed to restore pixel format %d on window %p.\n",
                            ctx->restore_pf, ctx->restore_pf_win);
                }
                FUNC4(ctx->restore_pf_win, dc);
            }
        }
        else
        {
            FUNC0("can't restore pixel format %d on window %p\n", ctx->restore_pf, ctx->restore_pf_win);
        }
    }

    ctx->restore_pf = 0;
    ctx->restore_pf_win = NULL;
    return ret;
}