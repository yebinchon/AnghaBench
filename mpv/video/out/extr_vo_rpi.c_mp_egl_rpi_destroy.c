
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_egl_rpi {int * gl; scalar_t__ egl_display; scalar_t__ egl_context; scalar_t__ egl_surface; } ;


 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 int EGL_NO_SURFACE ;
 int eglDestroyContext (scalar_t__,scalar_t__) ;
 int eglDestroySurface (scalar_t__,scalar_t__) ;
 int eglMakeCurrent (scalar_t__,int ,int ,scalar_t__) ;
 int eglReleaseThread () ;
 int talloc_free (int *) ;

__attribute__((used)) static void mp_egl_rpi_destroy(struct mp_egl_rpi *p)
{
    if (p->egl_display) {
        eglMakeCurrent(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
    }
    if (p->egl_surface)
        eglDestroySurface(p->egl_display, p->egl_surface);
    if (p->egl_context)
        eglDestroyContext(p->egl_display, p->egl_context);
    p->egl_context = EGL_NO_CONTEXT;
    eglReleaseThread();
    p->egl_display = EGL_NO_DISPLAY;
    talloc_free(p->gl);
    p->gl = ((void*)0);
}
