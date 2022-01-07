
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct shader_none_priv {TYPE_2__* fragment_pipe; TYPE_1__* vertex_pipe; } ;
struct TYPE_4__ {int (* enable_extension ) (struct wined3d_gl_info const*,int) ;} ;
struct TYPE_3__ {int (* vp_enable ) (struct wined3d_gl_info const*,int) ;} ;


 int stub1 (struct wined3d_gl_info const*,int) ;
 int stub2 (struct wined3d_gl_info const*,int) ;
 int use_ps (struct wined3d_state const*) ;
 int use_vs (struct wined3d_state const*) ;

__attribute__((used)) static void shader_none_select(void *shader_priv, struct wined3d_context *context,
        const struct wined3d_state *state)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_none_priv *priv = shader_priv;

    priv->vertex_pipe->vp_enable(gl_info, !use_vs(state));
    priv->fragment_pipe->enable_extension(gl_info, !use_ps(state));
}
