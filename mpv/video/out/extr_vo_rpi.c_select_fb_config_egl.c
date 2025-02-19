
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_egl_rpi {int egl_display; } ;
typedef int EGLint ;
typedef int * EGLConfig ;


 int EGL_BLUE_SIZE ;
 int EGL_DEPTH_SIZE ;
 int EGL_GREEN_SIZE ;
 int EGL_NONE ;
 int EGL_OPENGL_ES2_BIT ;
 int EGL_RED_SIZE ;
 int EGL_RENDERABLE_TYPE ;
 int EGL_SURFACE_TYPE ;
 int EGL_WINDOW_BIT ;
 int MP_FATAL (struct mp_egl_rpi*,char*) ;
 int eglChooseConfig (int ,int*,int **,int,int*) ;

__attribute__((used)) static EGLConfig select_fb_config_egl(struct mp_egl_rpi *p)
{
    EGLint attributes[] = {
        EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
        EGL_RED_SIZE, 8,
        EGL_GREEN_SIZE, 8,
        EGL_BLUE_SIZE, 8,
        EGL_DEPTH_SIZE, 0,
        EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
        EGL_NONE
    };

    EGLint config_count;
    EGLConfig config;

    eglChooseConfig(p->egl_display, attributes, &config, 1, &config_count);

    if (!config_count) {
        MP_FATAL(p, "Could find EGL configuration!\n");
        return ((void*)0);
    }

    return config;
}
