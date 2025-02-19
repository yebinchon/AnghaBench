
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {unsigned int shader_update_mask; struct wined3d_gl_info* gl_info; } ;
struct shader_none_priv {TYPE_2__* fragment_pipe; TYPE_1__* vertex_pipe; } ;
struct TYPE_4__ {int (* enable_extension ) (struct wined3d_gl_info const*,int ) ;} ;
struct TYPE_3__ {int (* vp_enable ) (struct wined3d_gl_info const*,int ) ;} ;


 int FALSE ;
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ;
 unsigned int WINED3D_SHADER_TYPE_DOMAIN ;
 unsigned int WINED3D_SHADER_TYPE_GEOMETRY ;
 unsigned int WINED3D_SHADER_TYPE_HULL ;
 unsigned int WINED3D_SHADER_TYPE_PIXEL ;
 unsigned int WINED3D_SHADER_TYPE_VERTEX ;
 int stub1 (struct wined3d_gl_info const*,int ) ;
 int stub2 (struct wined3d_gl_info const*,int ) ;

__attribute__((used)) static void shader_none_disable(void *shader_priv, struct wined3d_context *context)
{
    struct shader_none_priv *priv = shader_priv;
    const struct wined3d_gl_info *gl_info = context->gl_info;

    priv->vertex_pipe->vp_enable(gl_info, FALSE);
    priv->fragment_pipe->enable_extension(gl_info, FALSE);

    context->shader_update_mask = (1u << WINED3D_SHADER_TYPE_PIXEL)
            | (1u << WINED3D_SHADER_TYPE_VERTEX)
            | (1u << WINED3D_SHADER_TYPE_GEOMETRY)
            | (1u << WINED3D_SHADER_TYPE_HULL)
            | (1u << WINED3D_SHADER_TYPE_DOMAIN)
            | (1u << WINED3D_SHADER_TYPE_COMPUTE);
}
