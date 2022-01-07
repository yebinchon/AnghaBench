
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_shader_src_modifier { ____Placeholder_wined3d_shader_src_modifier } wined3d_shader_src_modifier ;


 int FIXME (char*,int) ;
 int sprintf (char*,char*,char const*,char const*,...) ;

__attribute__((used)) static void shader_glsl_gen_modifier(enum wined3d_shader_src_modifier src_modifier,
        const char *in_reg, const char *in_regswizzle, char *out_str)
{
    switch (src_modifier)
    {
    case 135:
    case 136:
    case 133:
        sprintf(out_str, "%s%s", in_reg, in_regswizzle);
        break;
    case 134:
        sprintf(out_str, "-%s%s", in_reg, in_regswizzle);
        break;
    case 132:
        sprintf(out_str, "!%s%s", in_reg, in_regswizzle);
        break;
    case 139:
        sprintf(out_str, "(%s%s - vec4(0.5)%s)", in_reg, in_regswizzle, in_regswizzle);
        break;
    case 138:
        sprintf(out_str, "-(%s%s - vec4(0.5)%s)", in_reg, in_regswizzle, in_regswizzle);
        break;
    case 131:
        sprintf(out_str, "(2.0 * (%s%s - 0.5))", in_reg, in_regswizzle);
        break;
    case 130:
        sprintf(out_str, "-(2.0 * (%s%s - 0.5))", in_reg, in_regswizzle);
        break;
    case 137:
        sprintf(out_str, "(1.0 - %s%s)", in_reg, in_regswizzle);
        break;
    case 129:
        sprintf(out_str, "(2.0 * %s%s)", in_reg, in_regswizzle);
        break;
    case 128:
        sprintf(out_str, "-(2.0 * %s%s)", in_reg, in_regswizzle);
        break;
    case 141:
        sprintf(out_str, "abs(%s%s)", in_reg, in_regswizzle);
        break;
    case 140:
        sprintf(out_str, "-abs(%s%s)", in_reg, in_regswizzle);
        break;
    default:
        FIXME("Unhandled modifier %u\n", src_modifier);
        sprintf(out_str, "%s%s", in_reg, in_regswizzle);
    }
}
