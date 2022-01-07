
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_src_param {int modifiers; int reg; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; } ;
struct shader_arb_ctx_priv {int target_version; } ;
struct TYPE_6__ {TYPE_2__* reg_maps; struct shader_arb_ctx_priv* backend_data; struct wined3d_string_buffer* buffer; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;
typedef scalar_t__ BOOL ;


 int ARB_ONE ;
 int ARB_TWO ;
 scalar_t__ FALSE ;
 int NV2 ;
 scalar_t__ TRUE ;
 char* arb_get_helper_value (int ,int ) ;
 int shader_addline (struct wined3d_string_buffer*,char*,char,char const*,...) ;
 int shader_arb_get_register_name (struct wined3d_shader_instruction const*,int *,char*,scalar_t__*) ;
 int shader_arb_get_swizzle (struct wined3d_shader_src_param const*,scalar_t__,char*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void shader_arb_get_src_param(const struct wined3d_shader_instruction *ins,
        const struct wined3d_shader_src_param *src, unsigned int tmpreg, char *outregstr)
{

    BOOL is_color = FALSE, insert_line;
    char regstr[256];
    char swzstr[20];
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct shader_arb_ctx_priv *ctx = ins->ctx->backend_data;
    const char *one = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_ONE);
    const char *two = arb_get_helper_value(ins->ctx->reg_maps->shader_version.type, ARB_TWO);


    insert_line = TRUE;


    shader_arb_get_register_name(ins, &src->reg, regstr, &is_color);
    shader_arb_get_swizzle(src, is_color, swzstr);

    switch (src->modifiers)
    {
    case 132:
        sprintf(outregstr, "%s%s", regstr, swzstr);
        insert_line = FALSE;
        break;
    case 133:
        sprintf(outregstr, "-%s%s", regstr, swzstr);
        insert_line = FALSE;
        break;
    case 138:
        shader_addline(buffer, "ADD T%c, %s, -coefdiv.x;\n", 'A' + tmpreg, regstr);
        break;
    case 137:
        shader_addline(buffer, "ADD T%c, -%s, coefdiv.x;\n", 'A' + tmpreg, regstr);
        break;
    case 131:
        shader_addline(buffer, "MAD T%c, %s, %s, -%s;\n", 'A' + tmpreg, regstr, two, one);
        break;
    case 130:
        shader_addline(buffer, "MAD T%c, %s, -%s, %s;\n", 'A' + tmpreg, regstr, two, one);
        break;
    case 136:
        shader_addline(buffer, "SUB T%c, %s, %s;\n", 'A' + tmpreg, one, regstr);
        break;
    case 129:
        shader_addline(buffer, "ADD T%c, %s, %s;\n", 'A' + tmpreg, regstr, regstr);
        break;
    case 128:
        shader_addline(buffer, "ADD T%c, -%s, -%s;\n", 'A' + tmpreg, regstr, regstr);
        break;
    case 134:
        shader_addline(buffer, "RCP T%c, %s.z;\n", 'A' + tmpreg, regstr);
        shader_addline(buffer, "MUL T%c, %s, T%c;\n", 'A' + tmpreg, regstr, 'A' + tmpreg);
        break;
    case 135:
        shader_addline(buffer, "RCP T%c, %s.w;\n", 'A' + tmpreg, regstr);
        shader_addline(buffer, "MUL T%c, %s, T%c;\n", 'A' + tmpreg, regstr, 'A' + tmpreg);
        break;
    case 140:
        if(ctx->target_version >= NV2) {
            sprintf(outregstr, "|%s%s|", regstr, swzstr);
            insert_line = FALSE;
        } else {
            shader_addline(buffer, "ABS T%c, %s;\n", 'A' + tmpreg, regstr);
        }
        break;
    case 139:
        if(ctx->target_version >= NV2) {
            sprintf(outregstr, "-|%s%s|", regstr, swzstr);
        } else {
            shader_addline(buffer, "ABS T%c, %s;\n", 'A' + tmpreg, regstr);
            sprintf(outregstr, "-T%c%s", 'A' + tmpreg, swzstr);
        }
        insert_line = FALSE;
        break;
    default:
        sprintf(outregstr, "%s%s", regstr, swzstr);
        insert_line = FALSE;
    }


    if (insert_line)
        sprintf(outregstr, "T%c%s", 'A' + tmpreg, swzstr);
}
