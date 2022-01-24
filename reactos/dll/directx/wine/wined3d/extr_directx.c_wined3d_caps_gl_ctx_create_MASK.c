#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wined3d_caps_gl_ctx {int /*<<< orphan*/ * restore_gl_ctx; int /*<<< orphan*/ * restore_dc; int /*<<< orphan*/ * wnd; int /*<<< orphan*/ * dc; int /*<<< orphan*/ * gl_ctx; int /*<<< orphan*/ * gl_info; } ;
struct wined3d_adapter {int /*<<< orphan*/  gl_info; } ;
typedef  int /*<<< orphan*/  pfd ;
struct TYPE_6__ {int nSize; int nVersion; int dwFlags; int cColorBits; int /*<<< orphan*/  iLayerType; int /*<<< orphan*/  iPixelType; } ;
typedef  TYPE_1__ PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int PFD_DOUBLEBUFFER ; 
 int PFD_DRAW_TO_WINDOW ; 
 int /*<<< orphan*/  PFD_MAIN_PLANE ; 
 int PFD_SUPPORT_OPENGL ; 
 int /*<<< orphan*/  PFD_TYPE_RGBA ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  WINED3D_OPENGL_WINDOW_CLASS_NAME ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC16(struct wined3d_adapter *adapter, struct wined3d_caps_gl_ctx *ctx)
{
    PIXELFORMATDESCRIPTOR pfd;
    int iPixelFormat;

    FUNC8("getting context...\n");

    ctx->restore_dc = FUNC14();
    ctx->restore_gl_ctx = FUNC13();

    /* We need a fake window as a hdc retrieved using GetDC(0) can't be used for much GL purposes. */
    ctx->wnd = FUNC1(WINED3D_OPENGL_WINDOW_CLASS_NAME, "WineD3D fake window",
            WS_OVERLAPPEDWINDOW, 10, 10, 10, 10, NULL, NULL, NULL, NULL);
    if (!ctx->wnd)
    {
        FUNC4("Failed to create a window.\n");
        goto fail;
    }

    ctx->dc = FUNC5(ctx->wnd);
    if (!ctx->dc)
    {
        FUNC4("Failed to get a DC.\n");
        goto fail;
    }

    /* PixelFormat selection */
    FUNC10(&pfd, sizeof(pfd));
    pfd.nSize = sizeof(pfd);
    pfd.nVersion = 1;
    pfd.dwFlags = PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER | PFD_DRAW_TO_WINDOW; /* PFD_GENERIC_ACCELERATED */
    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = 32;
    pfd.iLayerType = PFD_MAIN_PLANE;

    if (!(iPixelFormat = FUNC0(ctx->dc, &pfd)))
    {
        /* If this happens something is very wrong as ChoosePixelFormat barely fails. */
        FUNC4("Failed to find a suitable pixel format.\n");
        goto fail;
    }
    FUNC2(ctx->dc, iPixelFormat, sizeof(pfd), &pfd);
    FUNC7(ctx->dc, iPixelFormat, &pfd);

    /* Create a GL context. */
    if (!(ctx->gl_ctx = FUNC11(ctx->dc)))
    {
        FUNC9("Failed to create default context for capabilities initialization.\n");
        goto fail;
    }

    /* Make it the current GL context. */
    if (!FUNC15(ctx->dc, ctx->gl_ctx))
    {
        FUNC4("Failed to make caps GL context current.\n");
        goto fail;
    }

    ctx->gl_info = &adapter->gl_info;
    return TRUE;

fail:
    if (ctx->gl_ctx) FUNC12(ctx->gl_ctx);
    ctx->gl_ctx = NULL;
    if (ctx->dc) FUNC6(ctx->wnd, ctx->dc);
    ctx->dc = NULL;
    if (ctx->wnd) FUNC3(ctx->wnd);
    ctx->wnd = NULL;
    if (ctx->restore_gl_ctx && !FUNC15(ctx->restore_dc, ctx->restore_gl_ctx))
        FUNC4("Failed to restore previous GL context.\n");

    return FALSE;
}