
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int ** texture_states; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct atifs_context_private_data* fragment_pipe_data; struct wined3d_gl_info* gl_info; } ;
struct atifs_context_private_data {TYPE_1__* last_shader; } ;
struct TYPE_2__ {scalar_t__* constants; } ;
typedef int DWORD ;


 scalar_t__ ATIFS_CONSTANT_BUMP ;
 int ATIFS_CONST_BUMPMAT (int) ;
 int GL_EXTCALL (int ) ;
 int STATE_TEXTURESTAGE (int ,int ) ;
 int WINED3D_HIGHEST_TEXTURE_STATE ;
 size_t WINED3D_TSS_BUMPENV_MAT00 ;
 size_t WINED3D_TSS_BUMPENV_MAT01 ;
 size_t WINED3D_TSS_BUMPENV_MAT10 ;
 size_t WINED3D_TSS_BUMPENV_MAT11 ;
 int checkGLcall (char*) ;
 int glSetFragmentShaderConstantATI (int ,float*) ;

__attribute__((used)) static void set_bumpmat(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    DWORD stage = (state_id - STATE_TEXTURESTAGE(0, 0)) / (WINED3D_HIGHEST_TEXTURE_STATE + 1);
    const struct wined3d_gl_info *gl_info = context->gl_info;
    float mat[2][2];
    struct atifs_context_private_data *ctx_priv = context->fragment_pipe_data;

    if (!ctx_priv->last_shader
            || ctx_priv->last_shader->constants[stage] != ATIFS_CONSTANT_BUMP)
        return;

    mat[0][0] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_MAT00]);
    mat[1][0] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_MAT01]);
    mat[0][1] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_MAT10]);
    mat[1][1] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_MAT11]);






    mat[0][0] = (mat[0][0] + 1.0f) * 0.5f;
    mat[1][0] = (mat[1][0] + 1.0f) * 0.5f;
    mat[0][1] = (mat[0][1] + 1.0f) * 0.5f;
    mat[1][1] = (mat[1][1] + 1.0f) * 0.5f;
    GL_EXTCALL(glSetFragmentShaderConstantATI(ATIFS_CONST_BUMPMAT(stage), (float *) mat));
    checkGLcall("glSetFragmentShaderConstantATI(ATIFS_CONST_BUMPMAT(stage), mat)");
}
