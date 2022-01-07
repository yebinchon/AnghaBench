
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_opengl_cb_context ;


 int mpv_opengl_cb_draw (int *,int,int,int) ;

int mpv_opengl_cb_render(mpv_opengl_cb_context *ctx, int fbo, int vp[4])
{
    return mpv_opengl_cb_draw(ctx, fbo, vp[2], vp[3]);
}
