
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; struct glsl_context_data* shader_backend_data; } ;
struct shader_glsl_priv {TYPE_2__* fragment_pipe; TYPE_1__* vertex_pipe; } ;
struct glsl_context_data {int vertex_color_clamp; } ;
struct TYPE_4__ {int (* enable_extension ) (struct wined3d_gl_info const*,int ) ;} ;
struct TYPE_3__ {int (* vp_enable ) (struct wined3d_gl_info const*,int ) ;} ;


 size_t ARB_COLOR_BUFFER_FLOAT ;
 int FALSE ;
 int GL_CLAMP_VERTEX_COLOR_ARB ;
 int GL_EXTCALL (int ) ;
 int GL_FIXED_ONLY_ARB ;
 int checkGLcall (char*) ;
 int glClampColorARB (int ,int ) ;
 int glUseProgram (int ) ;
 scalar_t__ needs_legacy_glsl_syntax (struct wined3d_gl_info const*) ;
 int shader_glsl_invalidate_current_program (struct wined3d_context*) ;
 int stub1 (struct wined3d_gl_info const*,int ) ;
 int stub2 (struct wined3d_gl_info const*,int ) ;

__attribute__((used)) static void shader_glsl_disable(void *shader_priv, struct wined3d_context *context)
{
    struct glsl_context_data *ctx_data = context->shader_backend_data;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_glsl_priv *priv = shader_priv;

    shader_glsl_invalidate_current_program(context);
    GL_EXTCALL(glUseProgram(0));
    checkGLcall("glUseProgram");

    priv->vertex_pipe->vp_enable(gl_info, FALSE);
    priv->fragment_pipe->enable_extension(gl_info, FALSE);

    if (needs_legacy_glsl_syntax(gl_info) && gl_info->supported[ARB_COLOR_BUFFER_FLOAT])
    {
        ctx_data->vertex_color_clamp = GL_FIXED_ONLY_ARB;
        GL_EXTCALL(glClampColorARB(GL_CLAMP_VERTEX_COLOR_ARB, GL_FIXED_ONLY_ARB));
        checkGLcall("glClampColorARB");
    }
}
