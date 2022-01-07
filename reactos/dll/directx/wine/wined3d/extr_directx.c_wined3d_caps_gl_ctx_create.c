
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_caps_gl_ctx {int * restore_gl_ctx; int * restore_dc; int * wnd; int * dc; int * gl_ctx; int * gl_info; } ;
struct wined3d_adapter {int gl_info; } ;
typedef int pfd ;
struct TYPE_6__ {int nSize; int nVersion; int dwFlags; int cColorBits; int iLayerType; int iPixelType; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef int BOOL ;


 int ChoosePixelFormat (int *,TYPE_1__*) ;
 int * CreateWindowA (int ,char*,int ,int,int,int,int,int *,int *,int *,int *) ;
 int DescribePixelFormat (int *,int,int,TYPE_1__*) ;
 int DestroyWindow (int *) ;
 int ERR (char*) ;
 int FALSE ;
 int * GetDC (int *) ;
 int PFD_DOUBLEBUFFER ;
 int PFD_DRAW_TO_WINDOW ;
 int PFD_MAIN_PLANE ;
 int PFD_SUPPORT_OPENGL ;
 int PFD_TYPE_RGBA ;
 int ReleaseDC (int *,int *) ;
 int SetPixelFormat (int *,int,TYPE_1__*) ;
 int TRACE (char*) ;
 int TRUE ;
 int WARN (char*) ;
 int WINED3D_OPENGL_WINDOW_CLASS_NAME ;
 int WS_OVERLAPPEDWINDOW ;
 int ZeroMemory (TYPE_1__*,int) ;
 int * wglCreateContext (int *) ;
 int wglDeleteContext (int *) ;
 int * wglGetCurrentContext () ;
 int * wglGetCurrentDC () ;
 int wglMakeCurrent (int *,int *) ;

__attribute__((used)) static BOOL wined3d_caps_gl_ctx_create(struct wined3d_adapter *adapter, struct wined3d_caps_gl_ctx *ctx)
{
    PIXELFORMATDESCRIPTOR pfd;
    int iPixelFormat;

    TRACE("getting context...\n");

    ctx->restore_dc = wglGetCurrentDC();
    ctx->restore_gl_ctx = wglGetCurrentContext();


    ctx->wnd = CreateWindowA(WINED3D_OPENGL_WINDOW_CLASS_NAME, "WineD3D fake window",
            WS_OVERLAPPEDWINDOW, 10, 10, 10, 10, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (!ctx->wnd)
    {
        ERR("Failed to create a window.\n");
        goto fail;
    }

    ctx->dc = GetDC(ctx->wnd);
    if (!ctx->dc)
    {
        ERR("Failed to get a DC.\n");
        goto fail;
    }


    ZeroMemory(&pfd, sizeof(pfd));
    pfd.nSize = sizeof(pfd);
    pfd.nVersion = 1;
    pfd.dwFlags = PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER | PFD_DRAW_TO_WINDOW;
    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = 32;
    pfd.iLayerType = PFD_MAIN_PLANE;

    if (!(iPixelFormat = ChoosePixelFormat(ctx->dc, &pfd)))
    {

        ERR("Failed to find a suitable pixel format.\n");
        goto fail;
    }
    DescribePixelFormat(ctx->dc, iPixelFormat, sizeof(pfd), &pfd);
    SetPixelFormat(ctx->dc, iPixelFormat, &pfd);


    if (!(ctx->gl_ctx = wglCreateContext(ctx->dc)))
    {
        WARN("Failed to create default context for capabilities initialization.\n");
        goto fail;
    }


    if (!wglMakeCurrent(ctx->dc, ctx->gl_ctx))
    {
        ERR("Failed to make caps GL context current.\n");
        goto fail;
    }

    ctx->gl_info = &adapter->gl_info;
    return TRUE;

fail:
    if (ctx->gl_ctx) wglDeleteContext(ctx->gl_ctx);
    ctx->gl_ctx = ((void*)0);
    if (ctx->dc) ReleaseDC(ctx->wnd, ctx->dc);
    ctx->dc = ((void*)0);
    if (ctx->wnd) DestroyWindow(ctx->wnd);
    ctx->wnd = ((void*)0);
    if (ctx->restore_gl_ctx && !wglMakeCurrent(ctx->restore_dc, ctx->restore_gl_ctx))
        ERR("Failed to restore previous GL context.\n");

    return FALSE;
}
