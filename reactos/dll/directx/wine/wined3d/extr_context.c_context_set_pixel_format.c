
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* p_wglGetPixelFormat ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ wgl; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_2__ gl_ops; } ;
struct wined3d_context {int pixel_format; int restore_pf; scalar_t__ hdc_has_format; int * restore_pf_win; int * win_handle; int hdc; scalar_t__ hdc_is_private; struct wined3d_gl_info* gl_info; } ;
typedef int * HWND ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int ERR (char*,int,int ,...) ;
 scalar_t__ FALSE ;
 int GL_EXTCALL (int ) ;
 int GetLastError () ;
 int SetPixelFormat (int ,int,int *) ;
 scalar_t__ TRUE ;
 int WARN (char*,int,int ,int ) ;
 size_t WGL_WINE_PIXEL_FORMAT_PASSTHROUGH ;
 int * WindowFromDC (int ) ;
 int context_restore_pixel_format (struct wined3d_context*) ;
 int stub1 (int ) ;
 int wglSetPixelFormatWINE (int ,int) ;

__attribute__((used)) static BOOL context_set_pixel_format(struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    BOOL private = context->hdc_is_private;
    int format = context->pixel_format;
    HDC dc = context->hdc;
    int current;

    if (private && context->hdc_has_format)
        return TRUE;

    if (!private && WindowFromDC(dc) != context->win_handle)
        return FALSE;

    current = gl_info->gl_ops.wgl.p_wglGetPixelFormat(dc);
    if (current == format) goto success;

    if (!current)
    {
        if (!SetPixelFormat(dc, format, ((void*)0)))
        {

            WARN("Failed to set pixel format %d on device context %p, last error %#x.\n",
                    format, dc, GetLastError());
            return FALSE;
        }

        context->restore_pf = 0;
        context->restore_pf_win = private ? ((void*)0) : WindowFromDC(dc);
        goto success;
    }





    if (gl_info->supported[WGL_WINE_PIXEL_FORMAT_PASSTHROUGH])
    {
        HWND win;

        if (!GL_EXTCALL(wglSetPixelFormatWINE(dc, format)))
        {
            ERR("wglSetPixelFormatWINE failed to set pixel format %d on device context %p.\n",
                    format, dc);
            return FALSE;
        }

        win = private ? ((void*)0) : WindowFromDC(dc);
        if (win != context->restore_pf_win)
        {
            context_restore_pixel_format(context);

            context->restore_pf = private ? 0 : current;
            context->restore_pf_win = win;
        }

        goto success;
    }





    ERR("Unable to set pixel format %d on device context %p. Already using format %d.\n",
            format, dc, current);
    return TRUE;

success:
    if (private)
        context->hdc_has_format = TRUE;
    return TRUE;
}
