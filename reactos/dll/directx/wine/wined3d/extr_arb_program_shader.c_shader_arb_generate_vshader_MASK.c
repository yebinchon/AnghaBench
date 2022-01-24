#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct wined3d_shader_signature {int dummy; } ;
struct TYPE_4__ {scalar_t__* texcoord_mask; } ;
struct wined3d_shader_reg_maps {unsigned int integer_constants; TYPE_2__ u; scalar_t__ fog; } ;
struct wined3d_shader {TYPE_1__* device; struct wined3d_shader_reg_maps reg_maps; struct arb_vshader_private* backend_data; } ;
struct wined3d_gl_info {int quirks; scalar_t__* supported; } ;
struct shader_arb_priv {int /*<<< orphan*/  ffp_proj_control; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; int /*<<< orphan*/  footer_written; int /*<<< orphan*/  in_main_func; int /*<<< orphan*/  vs_clipplanes; int /*<<< orphan*/  control_frames; struct arb_vs_compile_args const* cur_vs_args; } ;
struct arb_vshader_private {int /*<<< orphan*/  rel_offset; } ;
struct arb_vs_compiled_shader {int /*<<< orphan*/  pos_fixup; int /*<<< orphan*/  num_int_consts; int /*<<< orphan*/ * int_consts; } ;
struct arb_vs_compile_args {int dummy; } ;
typedef  int /*<<< orphan*/  priv_ctx ;
struct TYPE_3__ {struct shader_arb_priv* shader_priv; } ;
typedef  int GLuint ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ARB ; 
 int /*<<< orphan*/  ARB_0001 ; 
 int /*<<< orphan*/  ARB_ONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_VERTEX_PROGRAM_ARB ; 
 int MAX_REG_TEXCRD ; 
 scalar_t__ NV2 ; 
 scalar_t__ NV3 ; 
 size_t NV_VERTEX_PROGRAM ; 
 size_t NV_VERTEX_PROGRAM2_OPTION ; 
 size_t NV_VERTEX_PROGRAM3 ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WINED3DSP_WRITEMASK_ALL ; 
 int /*<<< orphan*/  WINED3D_CONST_NUM_UNUSED ; 
 unsigned int WINED3D_MAX_CONSTS_I ; 
 int WINED3D_QUIRK_SET_TEXCOORD_W ; 
 int /*<<< orphan*/  WINED3D_SHADER_TYPE_VERTEX ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eps ; 
 int /*<<< orphan*/ * FUNC4 (struct wined3d_shader const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_shader const*,struct wined3d_shader_signature const*,struct shader_arb_ctx_priv*,struct arb_vs_compiled_shader*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct shader_arb_ctx_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ; 
 scalar_t__ FUNC11 (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct wined3d_string_buffer*,struct wined3d_gl_info const*,int /*<<< orphan*/ *,struct shader_arb_ctx_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_arb_ctx_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct shader_arb_ctx_priv*,struct arb_vshader_private const*,struct arb_vs_compile_args const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static GLuint FUNC18(const struct wined3d_shader *shader,
        const struct wined3d_gl_info *gl_info, struct wined3d_string_buffer *buffer,
        const struct arb_vs_compile_args *args, struct arb_vs_compiled_shader *compiled,
        const struct wined3d_shader_signature *ps_input_sig)
{
    const struct arb_vshader_private *shader_data = shader->backend_data;
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    struct shader_arb_priv *priv = shader->device->shader_priv;
    GLuint ret;
    DWORD next_local = 0;
    struct shader_arb_ctx_priv priv_ctx;
    unsigned int i;

    FUNC9(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.cur_vs_args = args;
    FUNC8(&priv_ctx.control_frames);
    FUNC7(shader, ps_input_sig, &priv_ctx, compiled);

    /*  Create the hw ARB shader */
    FUNC12(buffer, "!!ARBvp1.0\n");

    /* Always enable the NV extension if available. Unlike fragment shaders, there is no
     * mesurable performance penalty, and we can always make use of it for clipplanes.
     */
    if (gl_info->supported[NV_VERTEX_PROGRAM3])
    {
        FUNC12(buffer, "OPTION NV_vertex_program3;\n");
        priv_ctx.target_version = NV3;
        FUNC12(buffer, "ADDRESS aL;\n");
    }
    else if (gl_info->supported[NV_VERTEX_PROGRAM2_OPTION])
    {
        FUNC12(buffer, "OPTION NV_vertex_program2;\n");
        priv_ctx.target_version = NV2;
        FUNC12(buffer, "ADDRESS aL;\n");
    } else {
        priv_ctx.target_version = ARB;
    }

    FUNC12(buffer, "TEMP TMP_OUT;\n");
    if (reg_maps->fog)
        FUNC12(buffer, "TEMP TMP_FOGCOORD;\n");
    if (FUNC10(shader_data, reg_maps, gl_info))
    {
        char ftoa_tmp[17];
        FUNC17(eps, ftoa_tmp);
        FUNC12(buffer, "PARAM helper_const = { 0.0, 1.0, 2.0, %s};\n", ftoa_tmp);
    }
    if (FUNC11(shader_data, reg_maps, gl_info))
    {
        FUNC12(buffer, "PARAM rel_addr_const = { 0.5, %d.0, 0.0, 0.0 };\n", shader_data->rel_offset);
        FUNC12(buffer, "TEMP A0_SHADOW;\n");
    }

    FUNC12(buffer, "TEMP TA;\n");
    FUNC12(buffer, "TEMP TB;\n");

    /* Base Declarations */
    FUNC14(shader, reg_maps, buffer, gl_info,
            &priv_ctx.vs_clipplanes, &priv_ctx);

    for (i = 0; i < WINED3D_MAX_CONSTS_I; ++i)
    {
        compiled->int_consts[i] = WINED3D_CONST_NUM_UNUSED;
        if (reg_maps->integer_constants & (1u << i) && priv_ctx.target_version >= NV2)
        {
            const DWORD *control_values = FUNC4(shader, i);

            if(control_values)
            {
                FUNC12(buffer, "PARAM I%u = {%u, %u, %u, -1};\n", i,
                                control_values[0], control_values[1], control_values[2]);
            }
            else
            {
                compiled->int_consts[i] = next_local;
                compiled->num_int_consts++;
                FUNC12(buffer, "PARAM I%u = program.local[%u];\n", i, next_local++);
            }
        }
    }

    /* We need a constant to fixup the final position */
    FUNC12(buffer, "PARAM posFixup = program.local[%u];\n", next_local);
    compiled->pos_fixup = next_local++;

    /* Initialize output parameters. GL_ARB_vertex_program does not require special initialization values
     * for output parameters. D3D in theory does not do that either, but some applications depend on a
     * proper initialization of the secondary color, and programs using the fixed function pipeline without
     * a replacement shader depend on the texcoord.w being set properly.
     *
     * GL_NV_vertex_program defines that all output values are initialized to {0.0, 0.0, 0.0, 1.0}. This
     * assertion is in effect even when using GL_ARB_vertex_program without any NV specific additions. So
     * skip this if NV_vertex_program is supported. Otherwise, initialize the secondary color. For the tex-
     * coords, we have a flag in the opengl caps. Many cards do not require the texcoord being set, and
     * this can eat a number of instructions, so skip it unless this cap is set as well
     */
    if (!gl_info->supported[NV_VERTEX_PROGRAM])
    {
        const char *color_init = FUNC3(WINED3D_SHADER_TYPE_VERTEX, ARB_0001);
        FUNC12(buffer, "MOV result.color.secondary, %s;\n", color_init);

        if (gl_info->quirks & WINED3D_QUIRK_SET_TEXCOORD_W && !priv->ffp_proj_control)
        {
            int i;
            const char *one = FUNC3(WINED3D_SHADER_TYPE_VERTEX, ARB_ONE);
            for(i = 0; i < MAX_REG_TEXCRD; i++)
            {
                if (reg_maps->u.texcoord_mask[i] && reg_maps->u.texcoord_mask[i] != WINED3DSP_WRITEMASK_ALL)
                    FUNC12(buffer, "MOV result.texcoord[%u].w, %s\n", i, one);
            }
        }
    }

    /* The shader starts with the main function */
    priv_ctx.in_main_func = TRUE;
    /* Base Shader Body */
    if (FUNC0(FUNC15(shader, buffer, reg_maps, &priv_ctx, NULL, NULL)))
        return -1;

    if (!priv_ctx.footer_written) FUNC16(&priv_ctx,
            shader_data, args, reg_maps, gl_info, buffer);

    FUNC12(buffer, "END\n");

    /* TODO: change to resource.glObjectHandle or something like that */
    FUNC1(FUNC6(1, &ret));

    FUNC2("Creating a hw vertex shader, prg=%d\n", ret);
    FUNC1(FUNC5(GL_VERTEX_PROGRAM_ARB, ret));

    FUNC2("Created hw vertex shader, prg=%d\n", ret);
    if (!FUNC13(gl_info, GL_VERTEX_PROGRAM_ARB, buffer->buffer))
        return -1;

    return ret;
}