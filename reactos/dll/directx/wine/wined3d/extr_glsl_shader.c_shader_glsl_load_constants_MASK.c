#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct wined3d_vec4 {float member_0; float member_1; float member_2; float member_3; float x; } ;
struct wined3d_state {int** texture_states; int* render_states; TYPE_8__* fb; int /*<<< orphan*/  ps_consts_b; int /*<<< orphan*/  ps_consts_i; int /*<<< orphan*/  ps_consts_f; struct wined3d_light_info** lights; struct wined3d_shader** shader; int /*<<< orphan*/  vs_consts_b; int /*<<< orphan*/  vs_consts_i; int /*<<< orphan*/  vs_consts_f; } ;
struct TYPE_16__ {int /*<<< orphan*/  boolean_constants; int /*<<< orphan*/  integer_constants; } ;
struct wined3d_shader {TYPE_6__ reg_maps; } ;
struct wined3d_matrix {int /*<<< orphan*/  _11; } ;
struct TYPE_15__ {int type; } ;
struct wined3d_light_info {TYPE_5__ OriginalParms; } ;
struct TYPE_11__ {int user_clip_distances; } ;
struct wined3d_gl_info {TYPE_1__ limits; } ;
struct wined3d_context {int constant_update_mask; int /*<<< orphan*/  render_offscreen; struct wined3d_gl_info* gl_info; struct glsl_context_data* shader_backend_data; } ;
struct wined3d_color {float r; } ;
struct shader_glsl_priv {int next_constant_version; int /*<<< orphan*/  program_lookup; int /*<<< orphan*/  stack; int /*<<< orphan*/  pconst_heap; int /*<<< orphan*/  vconst_heap; } ;
struct TYPE_19__ {int* bumpenv_mat_location; int* bumpenv_lum_scale_location; int* bumpenv_lum_offset_location; int ycorrection_location; int tex_factor_location; int* tss_constant_location; int /*<<< orphan*/  alpha_test_ref_location; int /*<<< orphan*/  specular_enable_location; int /*<<< orphan*/  uniform_b_locations; int /*<<< orphan*/  uniform_i_locations; int /*<<< orphan*/  uniform_f_locations; } ;
struct TYPE_14__ {int pos_fixup_location; int* modelview_matrix_location; int projection_matrix_location; int /*<<< orphan*/ * normal_matrix_location; int /*<<< orphan*/  uniform_b_locations; int /*<<< orphan*/  uniform_i_locations; int /*<<< orphan*/  uniform_f_locations; } ;
struct TYPE_13__ {int pos_fixup_location; } ;
struct TYPE_12__ {int pos_fixup_location; } ;
struct glsl_shader_prog_link {int constant_update_mask; int /*<<< orphan*/  constant_version; TYPE_9__ ps; TYPE_4__ vs; TYPE_3__ ds; TYPE_2__ gs; } ;
struct glsl_context_data {struct glsl_shader_prog_link* glsl_program; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {TYPE_7__** render_targets; } ;
struct TYPE_17__ {scalar_t__ height; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_ACTIVE_LIGHTS ; 
 int MAX_TEXTURES ; 
 int MAX_VERTEX_INDEX_BLENDS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int UINT_MAX ; 
#define  WINED3D_LIGHT_DIRECTIONAL 131 
#define  WINED3D_LIGHT_PARALLELPOINT 130 
#define  WINED3D_LIGHT_POINT 129 
#define  WINED3D_LIGHT_SPOT 128 
 size_t WINED3D_RS_ALPHAREF ; 
 size_t WINED3D_RS_SPECULARENABLE ; 
 size_t WINED3D_RS_TEXTUREFACTOR ; 
 int WINED3D_SHADER_CONST_FFP_COLOR_KEY ; 
 int WINED3D_SHADER_CONST_FFP_LIGHTS ; 
 int WINED3D_SHADER_CONST_FFP_MATERIAL ; 
 int WINED3D_SHADER_CONST_FFP_MODELVIEW ; 
 int WINED3D_SHADER_CONST_FFP_PROJ ; 
 int WINED3D_SHADER_CONST_FFP_PS ; 
 int WINED3D_SHADER_CONST_FFP_TEXMATRIX ; 
 int WINED3D_SHADER_CONST_FFP_VERTEXBLEND ; 
 int FUNC3 (int) ; 
 int WINED3D_SHADER_CONST_POS_FIXUP ; 
 int WINED3D_SHADER_CONST_PS_ALPHA_TEST ; 
 int WINED3D_SHADER_CONST_PS_B ; 
 int WINED3D_SHADER_CONST_PS_BUMP_ENV ; 
 int WINED3D_SHADER_CONST_PS_F ; 
 int WINED3D_SHADER_CONST_PS_FOG ; 
 int WINED3D_SHADER_CONST_PS_I ; 
 int WINED3D_SHADER_CONST_PS_NP2_FIXUP ; 
 int WINED3D_SHADER_CONST_PS_Y_CORR ; 
 int WINED3D_SHADER_CONST_VS_B ; 
 int WINED3D_SHADER_CONST_VS_CLIP_PLANES ; 
 int WINED3D_SHADER_CONST_VS_F ; 
 int WINED3D_SHADER_CONST_VS_I ; 
 int WINED3D_SHADER_CONST_VS_POINTSIZE ; 
 size_t WINED3D_SHADER_TYPE_DOMAIN ; 
 size_t WINED3D_SHADER_TYPE_GEOMETRY ; 
 size_t WINED3D_SHADER_TYPE_PIXEL ; 
 size_t WINED3D_SHADER_TYPE_VERTEX ; 
 size_t WINED3D_TSS_BUMPENV_LOFFSET ; 
 size_t WINED3D_TSS_BUMPENV_LSCALE ; 
 size_t WINED3D_TSS_BUMPENV_MAT00 ; 
 size_t WINED3D_TSS_CONSTANT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*,struct wined3d_state const*,int,struct wined3d_matrix*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*,struct wined3d_matrix*,float*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context*,struct wined3d_state const*,struct wined3d_matrix*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC11 (int,int,float*) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC14 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_program_constant_version ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_context*,struct wined3d_state const*,float*) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_context*,struct wined3d_state const*,int,struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC17 (struct wined3d_context*,struct wined3d_state const*,unsigned int,struct wined3d_light_info const*,struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC18 (struct wined3d_context*,struct wined3d_state const*,struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC19 (struct wined3d_context*,struct wined3d_state const*,struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC20 (struct wined3d_context*,struct wined3d_state const*,int,struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_9__*,struct wined3d_gl_info const*,struct wined3d_state const*) ; 
 int /*<<< orphan*/  FUNC22 (struct wined3d_shader const*,struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct wined3d_shader const*,struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct wined3d_shader const*,struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct wined3d_context*,struct wined3d_state const*,struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_9__*,struct wined3d_gl_info const*,struct wined3d_state const*) ; 
 int /*<<< orphan*/  FUNC27 (struct wined3d_context*,struct wined3d_state const*,struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct wined3d_color*,int) ; 

__attribute__((used)) static void FUNC30(void *shader_priv, struct wined3d_context *context,
        const struct wined3d_state *state)
{
    const struct glsl_context_data *ctx_data = context->shader_backend_data;
    const struct wined3d_shader *vshader = state->shader[WINED3D_SHADER_TYPE_VERTEX];
    const struct wined3d_shader *pshader = state->shader[WINED3D_SHADER_TYPE_PIXEL];
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct shader_glsl_priv *priv = shader_priv;
    float position_fixup[4];
    float normal[3 * 3];
    DWORD update_mask;

    struct glsl_shader_prog_link *prog = ctx_data->glsl_program;
    UINT constant_version;
    int i;

    if (!prog) {
        /* No GLSL program set - nothing to do. */
        return;
    }
    constant_version = prog->constant_version;
    update_mask = context->constant_update_mask & prog->constant_update_mask;

    if (update_mask & WINED3D_SHADER_CONST_VS_F)
        FUNC23(vshader, gl_info, state->vs_consts_f,
                prog->vs.uniform_f_locations, &priv->vconst_heap, priv->stack, constant_version);

    if (update_mask & WINED3D_SHADER_CONST_VS_I)
        FUNC24(vshader, gl_info, state->vs_consts_i,
                prog->vs.uniform_i_locations, vshader->reg_maps.integer_constants);

    if (update_mask & WINED3D_SHADER_CONST_VS_B)
        FUNC22(vshader, gl_info, prog->vs.uniform_b_locations, state->vs_consts_b,
                vshader->reg_maps.boolean_constants);

    if (update_mask & WINED3D_SHADER_CONST_VS_CLIP_PLANES)
    {
        for (i = 0; i < gl_info->limits.user_clip_distances; ++i)
            FUNC16(context, state, i, prog);
    }

    if (update_mask & WINED3D_SHADER_CONST_VS_POINTSIZE)
        FUNC27(context, state, prog);

    if (update_mask & WINED3D_SHADER_CONST_POS_FIXUP)
    {
        FUNC15(context, state, position_fixup);
        if (state->shader[WINED3D_SHADER_TYPE_GEOMETRY])
            FUNC1(FUNC11(prog->gs.pos_fixup_location, 1, position_fixup));
        else if (state->shader[WINED3D_SHADER_TYPE_DOMAIN])
            FUNC1(FUNC11(prog->ds.pos_fixup_location, 1, position_fixup));
        else
            FUNC1(FUNC11(prog->vs.pos_fixup_location, 1, position_fixup));
        FUNC4("glUniform4fv");
    }

    if (update_mask & WINED3D_SHADER_CONST_FFP_MODELVIEW)
    {
        struct wined3d_matrix mat;

        FUNC5(context, state, 0, &mat);
        FUNC1(FUNC14(prog->vs.modelview_matrix_location[0], 1, FALSE, &mat._11));
        FUNC4("glUniformMatrix4fv");

        FUNC6(context, &mat, normal);
        FUNC1(FUNC13(prog->vs.normal_matrix_location[0], 1, FALSE, normal));
        FUNC4("glUniformMatrix3fv");
    }

    if (update_mask & WINED3D_SHADER_CONST_FFP_VERTEXBLEND)
    {
        struct wined3d_matrix mat;

        for (i = 1; i < MAX_VERTEX_INDEX_BLENDS; ++i)
        {
            if (prog->vs.modelview_matrix_location[i] == -1)
                break;
            if (!(update_mask & FUNC3(i)))
                continue;

            FUNC5(context, state, i, &mat);
            FUNC1(FUNC14(prog->vs.modelview_matrix_location[i], 1, FALSE, &mat._11));
            FUNC4("glUniformMatrix4fv");

            FUNC6(context, &mat, normal);
            FUNC1(FUNC13(prog->vs.normal_matrix_location[i], 1, FALSE, normal));
            FUNC4("glUniformMatrix3fv");
        }
    }

    if (update_mask & WINED3D_SHADER_CONST_FFP_PROJ)
    {
        struct wined3d_matrix projection;

        FUNC7(context, state, &projection);
        FUNC1(FUNC14(prog->vs.projection_matrix_location, 1, FALSE, &projection._11));
        FUNC4("glUniformMatrix4fv");
    }

    if (update_mask & WINED3D_SHADER_CONST_FFP_TEXMATRIX)
    {
        for (i = 0; i < MAX_TEXTURES; ++i)
            FUNC20(context, state, i, prog);
    }

    if (update_mask & WINED3D_SHADER_CONST_FFP_MATERIAL)
        FUNC19(context, state, prog);

    if (update_mask & WINED3D_SHADER_CONST_FFP_LIGHTS)
    {
        unsigned int point_idx, spot_idx, directional_idx, parallel_point_idx;
        DWORD point_count = 0;
        DWORD spot_count = 0;
        DWORD directional_count = 0;
        DWORD parallel_point_count = 0;

        for (i = 0; i < MAX_ACTIVE_LIGHTS; ++i)
        {
            if (!state->lights[i])
                continue;

            switch (state->lights[i]->OriginalParms.type)
            {
                case WINED3D_LIGHT_POINT:
                    ++point_count;
                    break;
                case WINED3D_LIGHT_SPOT:
                    ++spot_count;
                    break;
                case WINED3D_LIGHT_DIRECTIONAL:
                    ++directional_count;
                    break;
                case WINED3D_LIGHT_PARALLELPOINT:
                    ++parallel_point_count;
                    break;
                default:
                    FUNC0("Unhandled light type %#x.\n", state->lights[i]->OriginalParms.type);
                    break;
            }
        }
        point_idx = 0;
        spot_idx = point_idx + point_count;
        directional_idx = spot_idx + spot_count;
        parallel_point_idx = directional_idx + directional_count;

        FUNC18(context, state, prog);
        for (i = 0; i < MAX_ACTIVE_LIGHTS; ++i)
        {
            const struct wined3d_light_info *light_info = state->lights[i];
            unsigned int idx;

            if (!light_info)
                continue;

            switch (light_info->OriginalParms.type)
            {
                case WINED3D_LIGHT_POINT:
                    idx = point_idx++;
                    break;
                case WINED3D_LIGHT_SPOT:
                    idx = spot_idx++;
                    break;
                case WINED3D_LIGHT_DIRECTIONAL:
                    idx = directional_idx++;
                    break;
                case WINED3D_LIGHT_PARALLELPOINT:
                    idx = parallel_point_idx++;
                    break;
                default:
                    FUNC0("Unhandled light type %#x.\n", light_info->OriginalParms.type);
                    continue;
            }
            FUNC17(context, state, idx, light_info, prog);
        }
    }

    if (update_mask & WINED3D_SHADER_CONST_PS_F)
        FUNC23(pshader, gl_info, state->ps_consts_f,
                prog->ps.uniform_f_locations, &priv->pconst_heap, priv->stack, constant_version);

    if (update_mask & WINED3D_SHADER_CONST_PS_I)
        FUNC24(pshader, gl_info, state->ps_consts_i,
                prog->ps.uniform_i_locations, pshader->reg_maps.integer_constants);

    if (update_mask & WINED3D_SHADER_CONST_PS_B)
        FUNC22(pshader, gl_info, prog->ps.uniform_b_locations, state->ps_consts_b,
                pshader->reg_maps.boolean_constants);

    if (update_mask & WINED3D_SHADER_CONST_PS_BUMP_ENV)
    {
        for (i = 0; i < MAX_TEXTURES; ++i)
        {
            if (prog->ps.bumpenv_mat_location[i] == -1)
                continue;

            FUNC1(FUNC12(prog->ps.bumpenv_mat_location[i], 1, 0,
                    (const GLfloat *)&state->texture_states[i][WINED3D_TSS_BUMPENV_MAT00]));

            if (prog->ps.bumpenv_lum_scale_location[i] != -1)
            {
                FUNC1(FUNC9(prog->ps.bumpenv_lum_scale_location[i], 1,
                        (const GLfloat *)&state->texture_states[i][WINED3D_TSS_BUMPENV_LSCALE]));
                FUNC1(FUNC9(prog->ps.bumpenv_lum_offset_location[i], 1,
                        (const GLfloat *)&state->texture_states[i][WINED3D_TSS_BUMPENV_LOFFSET]));
            }
        }

        FUNC4("bump env uniforms");
    }

    if (update_mask & WINED3D_SHADER_CONST_PS_Y_CORR)
    {
        const struct wined3d_vec4 correction_params =
        {
            /* Position is relative to the framebuffer, not the viewport. */
            context->render_offscreen ? 0.0f : (float)state->fb->render_targets[0]->height,
            context->render_offscreen ? 1.0f : -1.0f,
            0.0f,
            0.0f,
        };

        FUNC1(FUNC11(prog->ps.ycorrection_location, 1, &correction_params.x));
    }

    if (update_mask & WINED3D_SHADER_CONST_PS_NP2_FIXUP)
        FUNC26(&prog->ps, gl_info, state);
    if (update_mask & WINED3D_SHADER_CONST_FFP_COLOR_KEY)
        FUNC21(&prog->ps, gl_info, state);

    if (update_mask & WINED3D_SHADER_CONST_FFP_PS)
    {
        struct wined3d_color color;

        if (prog->ps.tex_factor_location != -1)
        {
            FUNC29(&color, state->render_states[WINED3D_RS_TEXTUREFACTOR]);
            FUNC1(FUNC11(prog->ps.tex_factor_location, 1, &color.r));
        }

        if (state->render_states[WINED3D_RS_SPECULARENABLE])
            FUNC1(FUNC10(prog->ps.specular_enable_location, 1.0f, 1.0f, 1.0f, 0.0f));
        else
            FUNC1(FUNC10(prog->ps.specular_enable_location, 0.0f, 0.0f, 0.0f, 0.0f));

        for (i = 0; i < MAX_TEXTURES; ++i)
        {
            if (prog->ps.tss_constant_location[i] == -1)
                continue;

            FUNC29(&color, state->texture_states[i][WINED3D_TSS_CONSTANT]);
            FUNC1(FUNC11(prog->ps.tss_constant_location[i], 1, &color.r));
        }

        FUNC4("fixed function uniforms");
    }

    if (update_mask & WINED3D_SHADER_CONST_PS_FOG)
        FUNC25(context, state, prog);

    if (update_mask & WINED3D_SHADER_CONST_PS_ALPHA_TEST)
    {
        float ref = state->render_states[WINED3D_RS_ALPHAREF] / 255.0f;

        FUNC1(FUNC8(prog->ps.alpha_test_ref_location, ref));
        FUNC4("alpha test emulation uniform");
    }

    if (priv->next_constant_version == UINT_MAX)
    {
        FUNC2("Max constant version reached, resetting to 0.\n");
        FUNC28(&priv->program_lookup, reset_program_constant_version, NULL);
        priv->next_constant_version = 1;
    }
    else
    {
        prog->constant_version = priv->next_constant_version++;
    }
}