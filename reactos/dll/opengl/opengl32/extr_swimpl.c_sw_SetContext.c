
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int hdc; int hwnd; } ;
struct wgl_dc_data {int flags; TYPE_1__ owner; struct sw_framebuffer* sw_data; } ;
struct sw_framebuffer {int gl_buffer; TYPE_2__* gl_visual; } ;
struct sw_context {TYPE_7__* gl_ctx; int hook; } ;
typedef int bm ;
typedef int UINT ;
struct TYPE_15__ {scalar_t__ X; scalar_t__ Y; scalar_t__ Width; scalar_t__ Height; } ;
struct TYPE_19__ {TYPE_3__ Viewport; } ;
struct TYPE_18__ {int glDispatchTable; } ;
struct TYPE_17__ {int bmWidth; int bmHeight; } ;
struct TYPE_16__ {int right; int left; int bottom; int top; } ;
struct TYPE_14__ {scalar_t__ DBflag; } ;
typedef TYPE_4__ RECT ;
typedef int HWND ;
typedef int HDC ;
typedef int HBITMAP ;
typedef scalar_t__ DHGLRC ;
typedef int BOOL ;
typedef TYPE_5__ BITMAP ;


 int ERR (char*) ;
 int FALSE ;
 int GetClientRect (int ,TYPE_4__*) ;
 int GetCurrentObject (int ,int ) ;
 int GetCurrentThreadId () ;
 scalar_t__ GetObject (int ,int,TYPE_5__*) ;
 int IntSetCurrentDispatchTable (int *) ;
 int OBJ_BITMAP ;
 int SetWindowsHookEx (int ,int ,int *,int ) ;
 int TRUE ;
 int WGL_DC_OBJ_DC ;
 int WH_CALLWNDPROC ;
 int gl_ResizeBuffersMESA (TYPE_7__*) ;
 int gl_Viewport (TYPE_7__*,int ,int ,int,int) ;
 int gl_make_current (TYPE_7__*,int ) ;
 int setup_DD_pointers (TYPE_7__*) ;
 TYPE_6__ sw_api_table ;
 int sw_call_window_proc ;

BOOL sw_SetContext(struct wgl_dc_data* dc_data, DHGLRC dhglrc)
{
    struct sw_context* sw_ctx = (struct sw_context*)dhglrc;
    struct sw_framebuffer* fb = dc_data->sw_data;
    UINT width, height;


    if(dc_data->flags & WGL_DC_OBJ_DC)
    {
        HWND hwnd = dc_data->owner.hwnd;
        RECT client_rect;
        if(!hwnd)
        {
            ERR("Physical DC without a window!\n");
            return FALSE;
        }
        if(!GetClientRect(hwnd, &client_rect))
        {
            ERR("GetClientRect failed!\n");
            return FALSE;
        }


        sw_ctx->hook = SetWindowsHookEx(WH_CALLWNDPROC,
                            sw_call_window_proc,
                            ((void*)0),
                            GetCurrentThreadId());


        width = client_rect.right - client_rect.left;
        height = client_rect.bottom - client_rect.top;
    }
    else
    {
        BITMAP bm;
        HBITMAP hbmp;
        HDC hdc = dc_data->owner.hdc;

        if(fb->gl_visual->DBflag)
        {
            ERR("Memory DC called with a double buffered format.\n");
            return FALSE;
        }

        hbmp = GetCurrentObject( hdc, OBJ_BITMAP );
        if(!hbmp)
        {
            ERR("No Bitmap!\n");
            return FALSE;
        }
        if(GetObject(hbmp, sizeof(bm), &bm) == 0)
        {
            ERR("GetObject failed!\n");
            return FALSE;
        }
        width = bm.bmWidth;
        height = bm.bmHeight;
    }

    if(!width) width = 1;
    if(!height) height = 1;


    gl_make_current(sw_ctx->gl_ctx, fb->gl_buffer);


    setup_DD_pointers(sw_ctx->gl_ctx);


    if(sw_ctx->gl_ctx->Viewport.X == 0 &&
       sw_ctx->gl_ctx->Viewport.Y == 0 &&
       sw_ctx->gl_ctx->Viewport.Width == 0 &&
       sw_ctx->gl_ctx->Viewport.Height == 0)
    {
        gl_Viewport(sw_ctx->gl_ctx, 0, 0, width, height);
    }


    gl_ResizeBuffersMESA(sw_ctx->gl_ctx);


    IntSetCurrentDispatchTable(&sw_api_table.glDispatchTable);


   return TRUE;
}
