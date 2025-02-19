
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_device {TYPE_1__* adapter; struct shader_glsl_priv* vertex_priv; } ;
struct shader_glsl_priv {int ffp_vertex_shaders; } ;
struct glsl_ffp_destroy_ctx {int * gl_info; struct shader_glsl_priv* priv; } ;
struct TYPE_2__ {int gl_info; } ;


 int shader_glsl_free_ffp_vertex_shader ;
 int wine_rb_destroy (int *,int ,struct glsl_ffp_destroy_ctx*) ;

__attribute__((used)) static void glsl_vertex_pipe_vp_free(struct wined3d_device *device)
{
    struct shader_glsl_priv *priv = device->vertex_priv;
    struct glsl_ffp_destroy_ctx ctx;

    ctx.priv = priv;
    ctx.gl_info = &device->adapter->gl_info;
    wine_rb_destroy(&priv->ffp_vertex_shaders, shader_glsl_free_ffp_vertex_shader, &ctx);
}
