
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_state {scalar_t__** texture_states; TYPE_1__** textures; } ;
struct TYPE_5__ {int (* p_glTexEnvi ) (int ,int ,int const) ;} ;
struct TYPE_6__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {TYPE_3__ gl_ops; } ;
struct wined3d_context {unsigned int texShaderBumpMap; struct wined3d_gl_info* gl_info; } ;
struct TYPE_4__ {int target; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int const GL_NONE ;
 int const GL_OFFSET_TEXTURE_2D_NV ;
 int GL_SHADER_OPERATION_NV ;




 int GL_TEXTURE_SHADER_NV ;
 int TRUE ;
 scalar_t__ WINED3D_TOP_BUMPENVMAP ;
 scalar_t__ WINED3D_TOP_BUMPENVMAP_LUMINANCE ;
 size_t WINED3D_TSS_COLOR_OP ;
 int checkGLcall (char*) ;
 int stub1 (int ,int ,int const) ;
 int stub2 (int ,int ,int const) ;
 int stub3 (int ,int ,int const) ;
 int stub4 (int ,int ,int const) ;
 int stub5 (int ,int ,int const) ;

__attribute__((used)) static void nvts_activate_dimensions(const struct wined3d_state *state, DWORD stage, struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    BOOL bumpmap = FALSE;

    if (stage > 0
            && (state->texture_states[stage - 1][WINED3D_TSS_COLOR_OP] == WINED3D_TOP_BUMPENVMAP_LUMINANCE
            || state->texture_states[stage - 1][WINED3D_TSS_COLOR_OP] == WINED3D_TOP_BUMPENVMAP))
    {
        bumpmap = TRUE;
        context->texShaderBumpMap |= (1u << stage);
    }
    else
    {
        context->texShaderBumpMap &= ~(1u << stage);
    }

    if (state->textures[stage])
    {
        switch (state->textures[stage]->target)
        {
            case 131:
                gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV,
                        bumpmap ? GL_OFFSET_TEXTURE_2D_NV : 131);
                checkGLcall("glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, ...)");
                break;
            case 128:
                gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV,
                        bumpmap ? GL_OFFSET_TEXTURE_2D_NV : 128);
                checkGLcall("glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, ...)");
                break;
            case 130:
                gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, 130);
                checkGLcall("glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, GL_TEXTURE_3D)");
                break;
            case 129:
                gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, 129);
                checkGLcall("glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, GL_TEXTURE_CUBE_MAP_ARB)");
                break;
        }
    }
    else
    {
        gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, GL_NONE);
        checkGLcall("glTexEnvi(GL_TEXTURE_SHADER_NV, GL_SHADER_OPERATION_NV, GL_NONE)");
    }
}
