
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct wined3d_string_buffer {int buffer; } ;
struct TYPE_9__ {int major; } ;
struct wined3d_shader_reg_maps {int temporary; scalar_t__ loop_depth; int rt_mask; int bumpmat; unsigned int luminanceparams; unsigned int integer_constants; scalar_t__ vpos; scalar_t__ usesdsy; TYPE_1__ shader_version; scalar_t__ usescall; scalar_t__ usesifc; scalar_t__ usesfacing; scalar_t__ usestexldl; scalar_t__ usestexldd; scalar_t__ usesdsx; } ;
struct TYPE_10__ {unsigned int color0_reg; scalar_t__ color0_mov; } ;
struct TYPE_11__ {TYPE_2__ ps; } ;
struct wined3d_shader {TYPE_3__ u; struct arb_pshader_private* backend_data; struct wined3d_shader_reg_maps reg_maps; } ;
struct TYPE_14__ {scalar_t__ arb_ps_local_constants; } ;
struct wined3d_gl_info {int quirks; TYPE_6__ limits; scalar_t__* supported; } ;
struct shader_arb_ctx_priv {scalar_t__ target_version; struct arb_ps_compile_args const* cur_ps_args; struct arb_ps_np2fixup_info* cur_np2fixup_info; void* ps_post_process; int control_frames; struct arb_ps_compiled_shader* compiled_fprog; } ;
struct arb_pshader_private {unsigned int clipplane_emulation; } ;
struct TYPE_15__ {unsigned int active; unsigned char num_consts; int * idx; } ;
struct arb_ps_np2fixup_info {int offset; TYPE_7__ super; } ;
struct arb_ps_compiled_shader {unsigned char numbumpenvmatconsts; int* int_consts; int ycorrection; int num_int_consts; TYPE_5__* luminanceconst; TYPE_4__* bumpenvmatconst; struct arb_ps_np2fixup_info np2fixup_info; } ;
struct TYPE_16__ {int fog; unsigned int np2_fixup; void* srgb_correction; } ;
struct arb_ps_compile_args {TYPE_8__ super; scalar_t__ clip; } ;
typedef int priv_ctx ;
typedef unsigned int WORD ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {unsigned int texunit; void* const_num; } ;
struct TYPE_12__ {unsigned int texunit; void* const_num; } ;
typedef int GLuint ;
typedef int DWORD ;
typedef void* BOOL ;


 scalar_t__ ARB ;
 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 void* FALSE ;
 int FIXME (char*) ;
 int GL_EXTCALL (int ) ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 unsigned int MAX_FRAGMENT_SAMPLERS ;
 scalar_t__ NV2 ;
 scalar_t__ NV3 ;
 size_t NV_FRAGMENT_PROGRAM2 ;
 size_t NV_FRAGMENT_PROGRAM_OPTION ;
 int TRACE (char*,int ) ;
 void* TRUE ;
 void* WINED3D_CONST_NUM_UNUSED ;




 unsigned int WINED3D_MAX_CONSTS_I ;
 int WINED3D_QUIRK_BROKEN_ARB_FOG ;
 int arbfp_add_linear_fog (struct wined3d_string_buffer*,char*,char*) ;
 int arbfp_add_sRGB_correction (struct wined3d_string_buffer*,char*,char*,char*,char*,char*,int) ;
 int eps ;
 int* find_loop_control_values (struct wined3d_shader const*,unsigned int) ;
 int glBindProgramARB (int ,int ) ;
 int glGenProgramsARB (int,int *) ;
 int init_ps_input (struct wined3d_shader const*,struct arb_ps_compile_args const*,struct shader_arb_ctx_priv*) ;
 int list_init (int *) ;
 int memset (struct shader_arb_ctx_priv*,int ,int) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_arb_append_imm_vec4 (struct wined3d_string_buffer*,int ) ;
 int shader_arb_compile (struct wined3d_gl_info const*,int ,int ) ;
 int shader_generate_arb_declarations (struct wined3d_shader const*,struct wined3d_shader_reg_maps const*,struct wined3d_string_buffer*,struct wined3d_gl_info const*,int *,struct shader_arb_ctx_priv*) ;
 int shader_generate_code (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_arb_ctx_priv*,int *,int *) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int wined3d_ftoa (int ,char*) ;
 int wined3d_srgb_const0 ;
 int wined3d_srgb_const1 ;

__attribute__((used)) static GLuint shader_arb_generate_pshader(const struct wined3d_shader *shader,
        const struct wined3d_gl_info *gl_info, struct wined3d_string_buffer *buffer,
        const struct arb_ps_compile_args *args, struct arb_ps_compiled_shader *compiled)
{
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;
    GLuint retval;
    char fragcolor[16];
    DWORD next_local = 0;
    struct shader_arb_ctx_priv priv_ctx;
    BOOL dcl_td = FALSE;
    BOOL want_nv_prog = FALSE;
    struct arb_pshader_private *shader_priv = shader->backend_data;
    DWORD map;
    BOOL custom_linear_fog = FALSE;

    char srgbtmp[4][4];
    char ftoa_tmp[17];
    unsigned int i, found = 0;

    for (i = 0, map = reg_maps->temporary; map; map >>= 1, ++i)
    {
        if (!(map & 1)
                || (shader->u.ps.color0_mov && i == shader->u.ps.color0_reg)
                || (reg_maps->shader_version.major < 2 && !i))
            continue;

        sprintf(srgbtmp[found], "R%u", i);
        ++found;
        if (found == 4) break;
    }

    switch(found) {
        case 0:
            sprintf(srgbtmp[0], "TA");
            sprintf(srgbtmp[1], "TB");
            sprintf(srgbtmp[2], "TC");
            sprintf(srgbtmp[3], "TD");
            dcl_td = TRUE;
            break;
        case 1:
            sprintf(srgbtmp[1], "TA");
            sprintf(srgbtmp[2], "TB");
            sprintf(srgbtmp[3], "TC");
            break;
        case 2:
            sprintf(srgbtmp[2], "TA");
            sprintf(srgbtmp[3], "TB");
            break;
        case 3:
            sprintf(srgbtmp[3], "TA");
            break;
        case 4:
            break;
    }


    memset(&priv_ctx, 0, sizeof(priv_ctx));
    priv_ctx.cur_ps_args = args;
    priv_ctx.compiled_fprog = compiled;
    priv_ctx.cur_np2fixup_info = &compiled->np2fixup_info;
    init_ps_input(shader, args, &priv_ctx);
    list_init(&priv_ctx.control_frames);
    priv_ctx.ps_post_process = args->super.srgb_correction;
    if(reg_maps->usesdsx || reg_maps->usesdsy || reg_maps->loop_depth > 0 || reg_maps->usestexldd ||
       reg_maps->usestexldl || reg_maps->usesfacing || reg_maps->usesifc || reg_maps->usescall)
    {
        want_nv_prog = TRUE;
    }

    shader_addline(buffer, "!!ARBfp1.0\n");
    if (want_nv_prog && gl_info->supported[NV_FRAGMENT_PROGRAM2])
    {
        shader_addline(buffer, "OPTION NV_fragment_program2;\n");
        priv_ctx.target_version = NV3;
    }
    else if (want_nv_prog && gl_info->supported[NV_FRAGMENT_PROGRAM_OPTION])
    {
        shader_addline(buffer, "OPTION NV_fragment_program;\n");
        priv_ctx.target_version = NV2;
    } else {
        if(want_nv_prog)
        {



            ERR("The shader requires instructions that are not available in plain GL_ARB_fragment_program\n");
            ERR("Try GLSL\n");
        }
        priv_ctx.target_version = ARB;
    }

    if (reg_maps->rt_mask > 1)
    {
        shader_addline(buffer, "OPTION ARB_draw_buffers;\n");
    }

    if (reg_maps->shader_version.major < 3)
    {
        switch (args->super.fog)
        {
            case 128:
                break;
            case 129:
                if (gl_info->quirks & WINED3D_QUIRK_BROKEN_ARB_FOG)
                {
                    custom_linear_fog = TRUE;
                    priv_ctx.ps_post_process = TRUE;
                    break;
                }
                shader_addline(buffer, "OPTION ARB_fog_linear;\n");
                break;
            case 131:
                shader_addline(buffer, "OPTION ARB_fog_exp;\n");
                break;
            case 130:
                shader_addline(buffer, "OPTION ARB_fog_exp2;\n");
                break;
        }
    }





    shader_addline(buffer, "TEMP TA;\n");
    shader_addline(buffer, "TEMP TB;\n");
    shader_addline(buffer, "TEMP TC;\n");
    if(dcl_td) shader_addline(buffer, "TEMP TD;\n");
    shader_addline(buffer, "PARAM coefdiv = { 0.5, 0.25, 0.125, 0.0625 };\n");
    shader_addline(buffer, "PARAM coefmul = { 2, 4, 8, 16 };\n");
    wined3d_ftoa(eps, ftoa_tmp);
    shader_addline(buffer, "PARAM ps_helper_const = { 0.0, 1.0, %s, 0.0 };\n", ftoa_tmp);

    if (reg_maps->shader_version.major < 2)
    {
        strcpy(fragcolor, "R0");
    }
    else
    {
        if (priv_ctx.ps_post_process)
        {
            if (shader->u.ps.color0_mov)
            {
                sprintf(fragcolor, "R%u", shader->u.ps.color0_reg);
            }
            else
            {
                shader_addline(buffer, "TEMP TMP_COLOR;\n");
                strcpy(fragcolor, "TMP_COLOR");
            }
        } else {
            strcpy(fragcolor, "result.color");
        }
    }

    if (args->super.srgb_correction)
    {
        shader_addline(buffer, "PARAM srgb_consts0 = ");
        shader_arb_append_imm_vec4(buffer, wined3d_srgb_const0);
        shader_addline(buffer, ";\n");
        shader_addline(buffer, "PARAM srgb_consts1 = ");
        shader_arb_append_imm_vec4(buffer, wined3d_srgb_const1);
        shader_addline(buffer, ";\n");
    }


    shader_generate_arb_declarations(shader, reg_maps, buffer, gl_info, ((void*)0), &priv_ctx);

    for (i = 0, map = reg_maps->bumpmat; map; map >>= 1, ++i)
    {
        unsigned char bump_const;

        if (!(map & 1)) continue;

        bump_const = compiled->numbumpenvmatconsts;
        compiled->bumpenvmatconst[bump_const].const_num = WINED3D_CONST_NUM_UNUSED;
        compiled->bumpenvmatconst[bump_const].texunit = i;
        compiled->luminanceconst[bump_const].const_num = WINED3D_CONST_NUM_UNUSED;
        compiled->luminanceconst[bump_const].texunit = i;
        compiled->bumpenvmatconst[bump_const].const_num = next_local++;
        shader_addline(buffer, "PARAM bumpenvmat%d = program.local[%d];\n",
                       i, compiled->bumpenvmatconst[bump_const].const_num);
        compiled->numbumpenvmatconsts = bump_const + 1;

        if (!(reg_maps->luminanceparams & (1u << i)))
            continue;

        compiled->luminanceconst[bump_const].const_num = next_local++;
        shader_addline(buffer, "PARAM luminance%d = program.local[%d];\n",
                       i, compiled->luminanceconst[bump_const].const_num);
    }

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

    if(reg_maps->vpos || reg_maps->usesdsy)
    {
        compiled->ycorrection = next_local;
        shader_addline(buffer, "PARAM ycorrection = program.local[%u];\n", next_local++);

        if(reg_maps->vpos)
        {
            shader_addline(buffer, "TEMP vpos;\n");





            shader_addline(buffer, "MAD vpos, fragment.position, ycorrection.zyww, ycorrection.wxww;\n");
            shader_addline(buffer, "FLR vpos.xy, vpos;\n");
        }
    }
    else
    {
        compiled->ycorrection = WINED3D_CONST_NUM_UNUSED;
    }







    if (priv_ctx.cur_ps_args->super.np2_fixup) {
        unsigned char cur_fixup_sampler = 0;

        struct arb_ps_np2fixup_info* const fixup = priv_ctx.cur_np2fixup_info;
        const WORD map = priv_ctx.cur_ps_args->super.np2_fixup;
        const UINT max_lconsts = gl_info->limits.arb_ps_local_constants;

        fixup->offset = next_local;
        fixup->super.active = 0;

        for (i = 0; i < MAX_FRAGMENT_SAMPLERS; ++i)
        {
            if (!(map & (1u << i)))
                continue;

            if (fixup->offset + (cur_fixup_sampler >> 1) < max_lconsts)
            {
                fixup->super.active |= (1u << i);
                fixup->super.idx[i] = cur_fixup_sampler++;
            }
            else
            {
                FIXME("No free constant found to load NP2 fixup data into shader. "
                      "Sampling from this texture will probably look wrong.\n");
                break;
            }
        }

        fixup->super.num_consts = (cur_fixup_sampler + 1) >> 1;
        if (fixup->super.num_consts) {
            shader_addline(buffer, "PARAM np2fixup[%u] = { program.env[%u..%u] };\n",
                           fixup->super.num_consts, fixup->offset, fixup->super.num_consts + fixup->offset - 1);
        }
    }

    if (shader_priv->clipplane_emulation != ~0U && args->clip)
    {
        shader_addline(buffer, "KIL fragment.texcoord[%u];\n", shader_priv->clipplane_emulation);
    }


    if (FAILED(shader_generate_code(shader, buffer, reg_maps, &priv_ctx, ((void*)0), ((void*)0))))
        return 0;

    if(args->super.srgb_correction) {
        arbfp_add_sRGB_correction(buffer, fragcolor, srgbtmp[0], srgbtmp[1], srgbtmp[2], srgbtmp[3],
                                  priv_ctx.target_version >= NV2);
    }

    if (custom_linear_fog)
        arbfp_add_linear_fog(buffer, fragcolor, "TA");

    if(strcmp(fragcolor, "result.color")) {
        shader_addline(buffer, "MOV result.color, %s;\n", fragcolor);
    }
    shader_addline(buffer, "END\n");


    GL_EXTCALL(glGenProgramsARB(1, &retval));

    TRACE("Creating a hw pixel shader, prg=%d\n", retval);
    GL_EXTCALL(glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, retval));

    TRACE("Created hw pixel shader, prg=%d\n", retval);
    if (!shader_arb_compile(gl_info, GL_FRAGMENT_PROGRAM_ARB, buffer->buffer))
        return 0;

    return retval;
}
