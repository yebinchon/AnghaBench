
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int buffer; } ;
struct wined3d_shader_signature {int dummy; } ;
struct TYPE_4__ {scalar_t__* texcoord_mask; } ;
struct wined3d_shader_reg_maps {unsigned int integer_constants; TYPE_2__ u; scalar_t__ fog; } ;
struct wined3d_shader {TYPE_1__* device; struct wined3d_shader_reg_maps reg_maps; struct arb_vshader_private* backend_data; } ;
struct wined3d_gl_info {int quirks; scalar_t__* supported; } ;
struct shader_arb_priv {int ffp_proj_control; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; int footer_written; int in_main_func; int vs_clipplanes; int control_frames; struct arb_vs_compile_args const* cur_vs_args; } ;
struct arb_vshader_private {int rel_offset; } ;
struct arb_vs_compiled_shader {int pos_fixup; int num_int_consts; int * int_consts; } ;
struct arb_vs_compile_args {int dummy; } ;
typedef int priv_ctx ;
struct TYPE_3__ {struct shader_arb_priv* shader_priv; } ;
typedef int GLuint ;
typedef int DWORD ;


 scalar_t__ ARB ;
 int ARB_0001 ;
 int ARB_ONE ;
 scalar_t__ FAILED (int ) ;
 int GL_EXTCALL (int ) ;
 int GL_VERTEX_PROGRAM_ARB ;
 int MAX_REG_TEXCRD ;
 scalar_t__ NV2 ;
 scalar_t__ NV3 ;
 size_t NV_VERTEX_PROGRAM ;
 size_t NV_VERTEX_PROGRAM2_OPTION ;
 size_t NV_VERTEX_PROGRAM3 ;
 int TRACE (char*,int) ;
 int TRUE ;
 scalar_t__ WINED3DSP_WRITEMASK_ALL ;
 int WINED3D_CONST_NUM_UNUSED ;
 unsigned int WINED3D_MAX_CONSTS_I ;
 int WINED3D_QUIRK_SET_TEXCOORD_W ;
 int WINED3D_SHADER_TYPE_VERTEX ;
 char* arb_get_helper_value (int ,int ) ;
 int eps ;
 int * find_loop_control_values (struct wined3d_shader const*,unsigned int) ;
 int glBindProgramARB (int ,int) ;
 int glGenProgramsARB (int,int*) ;
 int init_output_registers (struct wined3d_shader const*,struct wined3d_shader_signature const*,struct shader_arb_ctx_priv*,struct arb_vs_compiled_shader*) ;
 int list_init (int *) ;
 int memset (struct shader_arb_ctx_priv*,int ,int) ;
 scalar_t__ need_helper_const (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ;
 scalar_t__ need_rel_addr_const (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_arb_compile (struct wined3d_gl_info const*,int ,int ) ;
 int shader_generate_arb_declarations (struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct wined3d_string_buffer*,struct wined3d_gl_info const*,int *,struct shader_arb_ctx_priv*) ;
 int shader_generate_code (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_arb_ctx_priv*,int *,int *) ;
 int vshader_add_footer (struct shader_arb_ctx_priv*,struct arb_vshader_private const*,struct arb_vs_compile_args const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*,struct wined3d_string_buffer*) ;
 int wined3d_ftoa (int ,char*) ;

__attribute__((used)) static GLuint shader_arb_generate_vshader(const struct wined3d_shader *shader,
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

    memset(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.cur_vs_args = args;
    list_init(&priv_ctx.control_frames);
    init_output_registers(shader, ps_input_sig, &priv_ctx, compiled);


    shader_addline(buffer, "!!ARBvp1.0\n");




    if (gl_info->supported[NV_VERTEX_PROGRAM3])
    {
        shader_addline(buffer, "OPTION NV_vertex_program3;\n");
        priv_ctx.target_version = NV3;
        shader_addline(buffer, "ADDRESS aL;\n");
    }
    else if (gl_info->supported[NV_VERTEX_PROGRAM2_OPTION])
    {
        shader_addline(buffer, "OPTION NV_vertex_program2;\n");
        priv_ctx.target_version = NV2;
        shader_addline(buffer, "ADDRESS aL;\n");
    } else {
        priv_ctx.target_version = ARB;
    }

    shader_addline(buffer, "TEMP TMP_OUT;\n");
    if (reg_maps->fog)
        shader_addline(buffer, "TEMP TMP_FOGCOORD;\n");
    if (need_helper_const(shader_data, reg_maps, gl_info))
    {
        char ftoa_tmp[17];
        wined3d_ftoa(eps, ftoa_tmp);
        shader_addline(buffer, "PARAM helper_const = { 0.0, 1.0, 2.0, %s};\n", ftoa_tmp);
    }
    if (need_rel_addr_const(shader_data, reg_maps, gl_info))
    {
        shader_addline(buffer, "PARAM rel_addr_const = { 0.5, %d.0, 0.0, 0.0 };\n", shader_data->rel_offset);
        shader_addline(buffer, "TEMP A0_SHADOW;\n");
    }

    shader_addline(buffer, "TEMP TA;\n");
    shader_addline(buffer, "TEMP TB;\n");


    shader_generate_arb_declarations(shader, reg_maps, buffer, gl_info,
            &priv_ctx.vs_clipplanes, &priv_ctx);

    for (i = 0; i < WINED3D_MAX_CONSTS_I; ++i)
    {
        compiled->int_consts[i] = WINED3D_CONST_NUM_UNUSED;
        if (reg_maps->integer_constants & (1u << i) && priv_ctx.target_version >= NV2)
        {
            const DWORD *control_values = find_loop_control_values(shader, i);

            if(control_values)
            {
                shader_addline(buffer, "PARAM I%u = {%u, %u, %u, -1};\n", i,
                                control_values[0], control_values[1], control_values[2]);
            }
            else
            {
                compiled->int_consts[i] = next_local;
                compiled->num_int_consts++;
                shader_addline(buffer, "PARAM I%u = program.local[%u];\n", i, next_local++);
            }
        }
    }


    shader_addline(buffer, "PARAM posFixup = program.local[%u];\n", next_local);
    compiled->pos_fixup = next_local++;
    if (!gl_info->supported[NV_VERTEX_PROGRAM])
    {
        const char *color_init = arb_get_helper_value(WINED3D_SHADER_TYPE_VERTEX, ARB_0001);
        shader_addline(buffer, "MOV result.color.secondary, %s;\n", color_init);

        if (gl_info->quirks & WINED3D_QUIRK_SET_TEXCOORD_W && !priv->ffp_proj_control)
        {
            int i;
            const char *one = arb_get_helper_value(WINED3D_SHADER_TYPE_VERTEX, ARB_ONE);
            for(i = 0; i < MAX_REG_TEXCRD; i++)
            {
                if (reg_maps->u.texcoord_mask[i] && reg_maps->u.texcoord_mask[i] != WINED3DSP_WRITEMASK_ALL)
                    shader_addline(buffer, "MOV result.texcoord[%u].w, %s\n", i, one);
            }
        }
    }


    priv_ctx.in_main_func = TRUE;

    if (FAILED(shader_generate_code(shader, buffer, reg_maps, &priv_ctx, ((void*)0), ((void*)0))))
        return -1;

    if (!priv_ctx.footer_written) vshader_add_footer(&priv_ctx,
            shader_data, args, reg_maps, gl_info, buffer);

    shader_addline(buffer, "END\n");


    GL_EXTCALL(glGenProgramsARB(1, &ret));

    TRACE("Creating a hw vertex shader, prg=%d\n", ret);
    GL_EXTCALL(glBindProgramARB(GL_VERTEX_PROGRAM_ARB, ret));

    TRACE("Created hw vertex shader, prg=%d\n", ret);
    if (!shader_arb_compile(gl_info, GL_VERTEX_PROGRAM_ARB, buffer->buffer))
        return -1;

    return ret;
}
