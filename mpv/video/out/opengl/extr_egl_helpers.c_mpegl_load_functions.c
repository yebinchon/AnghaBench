
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct GL {scalar_t__ SwapInterval; } ;
typedef scalar_t__ EGLDisplay ;


 int EGL_EXTENSIONS ;
 scalar_t__ EGL_NO_DISPLAY ;
 scalar_t__ eglGetCurrentDisplay () ;
 char* eglQueryString (scalar_t__,int ) ;
 int mpegl_get_proc_address ;
 int mpgl_load_functions2 (struct GL*,int ,int *,char const*,struct mp_log*) ;
 scalar_t__ swap_interval ;

void mpegl_load_functions(struct GL *gl, struct mp_log *log)
{
    const char *egl_exts = "";
    EGLDisplay display = eglGetCurrentDisplay();
    if (display != EGL_NO_DISPLAY)
        egl_exts = eglQueryString(display, EGL_EXTENSIONS);

    mpgl_load_functions2(gl, mpegl_get_proc_address, ((void*)0), egl_exts, log);
    if (!gl->SwapInterval)
        gl->SwapInterval = swap_interval;
}
