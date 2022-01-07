
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int ** texture_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct atifs_context_private_data* fragment_pipe_data; struct wined3d_gl_info* gl_info; } ;
struct wined3d_color {int r; } ;
struct atifs_context_private_data {TYPE_1__* last_shader; } ;
struct TYPE_2__ {scalar_t__* constants; } ;
typedef int DWORD ;


 scalar_t__ ATIFS_CONSTANT_STAGE ;
 int ATIFS_CONST_STAGE (int) ;
 int GL_EXTCALL (int ) ;
 int STATE_TEXTURESTAGE (int ,int ) ;
 int WINED3D_HIGHEST_TEXTURE_STATE ;
 size_t WINED3D_TSS_CONSTANT ;
 int checkGLcall (char*) ;
 int glSetFragmentShaderConstantATI (int ,int *) ;
 int wined3d_color_from_d3dcolor (struct wined3d_color*,int ) ;

__attribute__((used)) static void atifs_stage_constant(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    DWORD stage = (state_id - STATE_TEXTURESTAGE(0, 0)) / (WINED3D_HIGHEST_TEXTURE_STATE + 1);
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct atifs_context_private_data *ctx_priv = context->fragment_pipe_data;
    struct wined3d_color color;

    if (!ctx_priv->last_shader
            || ctx_priv->last_shader->constants[stage] != ATIFS_CONSTANT_STAGE)
        return;

    wined3d_color_from_d3dcolor(&color, state->texture_states[stage][WINED3D_TSS_CONSTANT]);
    GL_EXTCALL(glSetFragmentShaderConstantATI(ATIFS_CONST_STAGE(stage), &color.r));
    checkGLcall("glSetFragmentShaderConstantATI(ATIFS_CONST_STAGE(stage), &color.r)");
}
