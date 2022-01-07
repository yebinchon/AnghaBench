
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int * render_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct atifs_context_private_data* fragment_pipe_data; struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int r; } ;
struct atifs_context_private_data {TYPE_1__* last_shader; } ;
struct TYPE_2__ {scalar_t__* constants; } ;
typedef int DWORD ;


 scalar_t__ ATIFS_CONSTANT_TFACTOR ;
 size_t ATIFS_CONST_TFACTOR ;
 size_t GL_CON_0_ATI ;
 int GL_EXTCALL (int ) ;
 size_t WINED3D_RS_TEXTUREFACTOR ;
 int checkGLcall (char*) ;
 int glSetFragmentShaderConstantATI (size_t,int *) ;
 int wined3d_color_from_d3dcolor (struct wined3d_color*,int ) ;

__attribute__((used)) static void atifs_tfactor(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct atifs_context_private_data *ctx_priv = context->fragment_pipe_data;
    struct wined3d_color color;

    if (!ctx_priv->last_shader
            || ctx_priv->last_shader->constants[ATIFS_CONST_TFACTOR - GL_CON_0_ATI] != ATIFS_CONSTANT_TFACTOR)
        return;

    wined3d_color_from_d3dcolor(&color, state->render_states[WINED3D_RS_TEXTUREFACTOR]);
    GL_EXTCALL(glSetFragmentShaderConstantATI(ATIFS_CONST_TFACTOR, &color.r));
    checkGLcall("glSetFragmentShaderConstantATI(ATIFS_CONST_TFACTOR, &color.r)");
}
