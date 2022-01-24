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
struct TYPE_3__ {int (* p_wglGetPixelFormat ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ wgl; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_2__ gl_ops; } ;
struct wined3d_context {int pixel_format; int restore_pf; scalar_t__ hdc_has_format; int /*<<< orphan*/ * restore_pf_win; int /*<<< orphan*/ * win_handle; int /*<<< orphan*/  hdc; scalar_t__ hdc_is_private; struct wined3d_gl_info* gl_info; } ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t WGL_WINE_PIXEL_FORMAT_PASSTHROUGH ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC9(struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    BOOL private = context->hdc_is_private;
    int format = context->pixel_format;
    HDC dc = context->hdc;
    int current;

    if (private && context->hdc_has_format)
        return TRUE;

    if (!private && FUNC5(dc) != context->win_handle)
        return FALSE;

    current = gl_info->gl_ops.wgl.p_wglGetPixelFormat(dc);
    if (current == format) goto success;

    if (!current)
    {
        if (!FUNC3(dc, format, NULL))
        {
            /* This may also happen if the dc belongs to a destroyed window. */
            FUNC4("Failed to set pixel format %d on device context %p, last error %#x.\n",
                    format, dc, FUNC2());
            return FALSE;
        }

        context->restore_pf = 0;
        context->restore_pf_win = private ? NULL : FUNC5(dc);
        goto success;
    }

    /* By default WGL doesn't allow pixel format adjustments but we need it
     * here. For this reason there's a Wine specific wglSetPixelFormat()
     * which allows us to set the pixel format multiple times. Only use it
     * when really needed. */
    if (gl_info->supported[WGL_WINE_PIXEL_FORMAT_PASSTHROUGH])
    {
        HWND win;

        if (!FUNC1(FUNC8(dc, format)))
        {
            FUNC0("wglSetPixelFormatWINE failed to set pixel format %d on device context %p.\n",
                    format, dc);
            return FALSE;
        }

        win = private ? NULL : FUNC5(dc);
        if (win != context->restore_pf_win)
        {
            FUNC6(context);

            context->restore_pf = private ? 0 : current;
            context->restore_pf_win = win;
        }

        goto success;
    }

    /* OpenGL doesn't allow pixel format adjustments. Print an error and
     * continue using the old format. There's a big chance that the old
     * format works although with a performance hit and perhaps rendering
     * errors. */
    FUNC0("Unable to set pixel format %d on device context %p. Already using format %d.\n",
            format, dc, current);
    return TRUE;

success:
    if (private)
        context->hdc_has_format = TRUE;
    return TRUE;
}