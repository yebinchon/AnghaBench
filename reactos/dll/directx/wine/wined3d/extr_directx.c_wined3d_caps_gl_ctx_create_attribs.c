
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int * p_wglCreateContextAttribsARB; } ;
struct wined3d_caps_gl_ctx {int gl_ctx; int dc; } ;
typedef int HGLRC ;
typedef int BOOL ;


 int ERR (char*,int ) ;
 int FALSE ;
 int GetLastError () ;
 int TRUE ;
 int context_create_wgl_attribs (struct wined3d_gl_info*,int ,int *) ;
 int wglDeleteContext (int ) ;
 scalar_t__ wglGetProcAddress (char*) ;
 int wglMakeCurrent (int ,int ) ;

__attribute__((used)) static BOOL wined3d_caps_gl_ctx_create_attribs(struct wined3d_caps_gl_ctx *caps_gl_ctx,
        struct wined3d_gl_info *gl_info)
{
    HGLRC new_ctx;

    if (!(gl_info->p_wglCreateContextAttribsARB = (void *)wglGetProcAddress("wglCreateContextAttribsARB")))
        return TRUE;

    if (!(new_ctx = context_create_wgl_attribs(gl_info, caps_gl_ctx->dc, ((void*)0))))
    {
        gl_info->p_wglCreateContextAttribsARB = ((void*)0);
        return FALSE;
    }

    if (!wglMakeCurrent(caps_gl_ctx->dc, new_ctx))
    {
        ERR("Failed to make new context current, last error %#x.\n", GetLastError());
        if (!wglDeleteContext(new_ctx))
            ERR("Failed to delete new context, last error %#x.\n", GetLastError());
        gl_info->p_wglCreateContextAttribsARB = ((void*)0);
        return TRUE;
    }

    if (!wglDeleteContext(caps_gl_ctx->gl_ctx))
        ERR("Failed to delete old context, last error %#x.\n", GetLastError());
    caps_gl_ctx->gl_ctx = new_ctx;

    return TRUE;
}
