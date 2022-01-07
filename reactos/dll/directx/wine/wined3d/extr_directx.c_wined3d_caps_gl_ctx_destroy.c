
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct wined3d_caps_gl_ctx {int * restore_gl_ctx; int * restore_dc; int wnd; int dc; int gl_ctx; scalar_t__ test_vbo; scalar_t__ test_program_id; struct wined3d_gl_info* gl_info; } ;
typedef int DWORD ;


 int DestroyWindow (int ) ;
 int ERR (char*,...) ;
 int GL_EXTCALL (int ) ;
 int GetLastError () ;
 int TRACE (char*) ;
 int glDeleteBuffers (int,scalar_t__*) ;
 int glDeleteProgram (scalar_t__) ;
 int wglDeleteContext (int ) ;
 int wglMakeCurrent (int *,int *) ;
 int wined3d_release_dc (int ,int ) ;

__attribute__((used)) static void wined3d_caps_gl_ctx_destroy(const struct wined3d_caps_gl_ctx *ctx)
{
    const struct wined3d_gl_info *gl_info = ctx->gl_info;

    TRACE("Destroying caps GL context.\n");




    if (ctx->test_program_id || ctx->test_vbo)
    {
        GL_EXTCALL(glDeleteProgram(ctx->test_program_id));
        GL_EXTCALL(glDeleteBuffers(1, &ctx->test_vbo));
    }

    if (!wglMakeCurrent(((void*)0), ((void*)0)))
        ERR("Failed to disable caps GL context.\n");

    if (!wglDeleteContext(ctx->gl_ctx))
    {
        DWORD err = GetLastError();
        ERR("wglDeleteContext(%p) failed, last error %#x.\n", ctx->gl_ctx, err);
    }

    wined3d_release_dc(ctx->wnd, ctx->dc);
    DestroyWindow(ctx->wnd);

    if (ctx->restore_gl_ctx && !wglMakeCurrent(ctx->restore_dc, ctx->restore_gl_ctx))
        ERR("Failed to restore previous GL context.\n");
}
