
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* p_glDisable ) (int ) ;} ;
struct TYPE_7__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_3__ gl_ops; } ;
struct wined3d_context {unsigned int shader_update_mask; struct wined3d_gl_info* gl_info; } ;
struct shader_arb_priv {scalar_t__ last_vs_color_unclamp; TYPE_4__* vertex_pipe; scalar_t__ current_vprogram_id; TYPE_1__* fragment_pipe; scalar_t__ current_fprogram_id; } ;
struct TYPE_8__ {int (* vp_enable ) (struct wined3d_gl_info const*,scalar_t__) ;} ;
struct TYPE_5__ {int (* enable_extension ) (struct wined3d_gl_info const*,scalar_t__) ;} ;


 size_t ARB_COLOR_BUFFER_FLOAT ;
 size_t ARB_FRAGMENT_PROGRAM ;
 size_t ARB_VERTEX_PROGRAM ;
 scalar_t__ FALSE ;
 int GL_CLAMP_VERTEX_COLOR_ARB ;
 int GL_EXTCALL (int ) ;
 int GL_FIXED_ONLY_ARB ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 int GL_VERTEX_PROGRAM_ARB ;
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ;
 unsigned int WINED3D_SHADER_TYPE_DOMAIN ;
 unsigned int WINED3D_SHADER_TYPE_GEOMETRY ;
 unsigned int WINED3D_SHADER_TYPE_HULL ;
 unsigned int WINED3D_SHADER_TYPE_PIXEL ;
 unsigned int WINED3D_SHADER_TYPE_VERTEX ;
 int checkGLcall (char*) ;
 int glClampColorARB (int ,int ) ;
 int stub1 (int ) ;
 int stub2 (struct wined3d_gl_info const*,scalar_t__) ;
 int stub3 (int ) ;
 int stub4 (struct wined3d_gl_info const*,scalar_t__) ;

__attribute__((used)) static void shader_arb_disable(void *shader_priv, struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_arb_priv *priv = shader_priv;

    if (gl_info->supported[ARB_FRAGMENT_PROGRAM])
    {
        gl_info->gl_ops.gl.p_glDisable(GL_FRAGMENT_PROGRAM_ARB);
        checkGLcall("glDisable(GL_FRAGMENT_PROGRAM_ARB)");
        priv->current_fprogram_id = 0;
    }
    priv->fragment_pipe->enable_extension(gl_info, FALSE);

    if (gl_info->supported[ARB_VERTEX_PROGRAM])
    {
        priv->current_vprogram_id = 0;
        gl_info->gl_ops.gl.p_glDisable(GL_VERTEX_PROGRAM_ARB);
        checkGLcall("glDisable(GL_VERTEX_PROGRAM_ARB)");
    }
    priv->vertex_pipe->vp_enable(gl_info, FALSE);

    if (gl_info->supported[ARB_COLOR_BUFFER_FLOAT] && priv->last_vs_color_unclamp)
    {
        GL_EXTCALL(glClampColorARB(GL_CLAMP_VERTEX_COLOR_ARB, GL_FIXED_ONLY_ARB));
        checkGLcall("glClampColorARB");
        priv->last_vs_color_unclamp = FALSE;
    }

    context->shader_update_mask = (1u << WINED3D_SHADER_TYPE_PIXEL)
            | (1u << WINED3D_SHADER_TYPE_VERTEX)
            | (1u << WINED3D_SHADER_TYPE_GEOMETRY)
            | (1u << WINED3D_SHADER_TYPE_HULL)
            | (1u << WINED3D_SHADER_TYPE_DOMAIN)
            | (1u << WINED3D_SHADER_TYPE_COMPUTE);
}
