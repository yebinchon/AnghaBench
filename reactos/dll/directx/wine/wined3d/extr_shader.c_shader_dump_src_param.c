
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int dummy; } ;
struct wined3d_shader_src_param {int modifiers; int swizzle; int reg; } ;
typedef enum wined3d_shader_src_modifier { ____Placeholder_wined3d_shader_src_modifier } wined3d_shader_src_modifier ;
typedef int DWORD ;
 int WINED3DSP_NOSWIZZLE ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_dump_register (struct wined3d_string_buffer*,int *,struct wined3d_shader_version const*) ;

__attribute__((used)) static void shader_dump_src_param(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_src_param *param, const struct wined3d_shader_version *shader_version)
{
    enum wined3d_shader_src_modifier src_modifier = param->modifiers;
    DWORD swizzle = param->swizzle;

    if (src_modifier == 134
            || src_modifier == 138
            || src_modifier == 130
            || src_modifier == 128
            || src_modifier == 140)
        shader_addline(buffer, "-");
    else if (src_modifier == 137)
        shader_addline(buffer, "1-");
    else if (src_modifier == 132)
        shader_addline(buffer, "!");

    if (src_modifier == 141 || src_modifier == 140)
        shader_addline(buffer, "abs(");

    shader_dump_register(buffer, &param->reg, shader_version);

    switch (src_modifier)
    {
        case 133: break;
        case 134: break;
        case 132: break;
        case 139: shader_addline(buffer, "_bias"); break;
        case 138: shader_addline(buffer, "_bias"); break;
        case 131: shader_addline(buffer, "_bx2"); break;
        case 130: shader_addline(buffer, "_bx2"); break;
        case 137: break;
        case 129: shader_addline(buffer, "_x2"); break;
        case 128: shader_addline(buffer, "_x2"); break;
        case 135: shader_addline(buffer, "_dz"); break;
        case 136: shader_addline(buffer, "_dw"); break;
        case 140: shader_addline(buffer, ")"); break;
        case 141: shader_addline(buffer, ")"); break;
        default: shader_addline(buffer, "_unknown_modifier(%#x)", src_modifier);
    }

    if (swizzle != WINED3DSP_NOSWIZZLE)
    {
        static const char swizzle_chars[] = "xyzw";
        DWORD swizzle_x = swizzle & 0x03;
        DWORD swizzle_y = (swizzle >> 2) & 0x03;
        DWORD swizzle_z = (swizzle >> 4) & 0x03;
        DWORD swizzle_w = (swizzle >> 6) & 0x03;

        if (swizzle_x == swizzle_y
                && swizzle_x == swizzle_z
                && swizzle_x == swizzle_w)
        {
            shader_addline(buffer, ".%c", swizzle_chars[swizzle_x]);
        }
        else
        {
            shader_addline(buffer, ".%c%c%c%c", swizzle_chars[swizzle_x], swizzle_chars[swizzle_y],
                    swizzle_chars[swizzle_z], swizzle_chars[swizzle_w]);
        }
    }
}
