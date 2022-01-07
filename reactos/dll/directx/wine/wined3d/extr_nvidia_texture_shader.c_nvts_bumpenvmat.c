
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_state {int ** texture_states; } ;
struct TYPE_5__ {int (* p_glTexEnvfv ) (int ,int ,float*) ;} ;
struct TYPE_6__ {TYPE_2__ gl; } ;
struct TYPE_4__ {int textures; } ;
struct wined3d_gl_info {TYPE_3__ gl_ops; TYPE_1__ limits; } ;
struct wined3d_context {int* tex_unit_map; struct wined3d_gl_info* gl_info; } ;
typedef int DWORD ;


 int GL_OFFSET_TEXTURE_MATRIX_NV ;
 int GL_TEXTURE_SHADER_NV ;
 int STATE_TEXTURESTAGE (int ,int ) ;
 int WINED3D_HIGHEST_TEXTURE_STATE ;
 size_t WINED3D_TSS_BUMPENV_MAT00 ;
 size_t WINED3D_TSS_BUMPENV_MAT01 ;
 size_t WINED3D_TSS_BUMPENV_MAT10 ;
 size_t WINED3D_TSS_BUMPENV_MAT11 ;
 int checkGLcall (char*) ;
 int context_active_texture (struct wined3d_context*,struct wined3d_gl_info const*,int) ;
 int stub1 (int ,int ,float*) ;

__attribute__((used)) static void nvts_bumpenvmat(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    DWORD stage = (state_id - STATE_TEXTURESTAGE(0, 0)) / (WINED3D_HIGHEST_TEXTURE_STATE + 1);
    DWORD mapped_stage = context->tex_unit_map[stage + 1];
    const struct wined3d_gl_info *gl_info = context->gl_info;
    float mat[2][2];







    if (mapped_stage < gl_info->limits.textures)
    {
        context_active_texture(context, gl_info, mapped_stage);



        mat[0][0] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_MAT00]);
        mat[1][0] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_MAT01]);
        mat[0][1] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_MAT10]);
        mat[1][1] = *((float *)&state->texture_states[stage][WINED3D_TSS_BUMPENV_MAT11]);
        gl_info->gl_ops.gl.p_glTexEnvfv(GL_TEXTURE_SHADER_NV, GL_OFFSET_TEXTURE_MATRIX_NV, (float *)mat);
        checkGLcall("glTexEnvfv(GL_TEXTURE_SHADER_NV, GL_OFFSET_TEXTURE_MATRIX_NV, mat)");
    }
}
