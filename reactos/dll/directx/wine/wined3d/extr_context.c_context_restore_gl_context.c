
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
typedef int HGLRC ;
typedef int HDC ;


 int ERR (char*,int ,int ,int ) ;
 int GetLastError () ;
 int context_set_current (int *) ;
 int wglMakeCurrent (int ,int ) ;

__attribute__((used)) static void context_restore_gl_context(const struct wined3d_gl_info *gl_info, HDC dc, HGLRC gl_ctx)
{
    if (!wglMakeCurrent(dc, gl_ctx))
    {
        ERR("Failed to restore GL context %p on device context %p, last error %#x.\n",
                gl_ctx, dc, GetLastError());
        context_set_current(((void*)0));
    }
}
