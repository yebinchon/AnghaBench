
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_signature_element {int sysval_semantic; char const* semantic_idx; } ;


 int FIXME (char*,int) ;






 int shader_addline (struct wined3d_string_buffer*,char*,char const*,...) ;

__attribute__((used)) static void shader_glsl_generate_patch_constant_name(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_signature_element *constant, unsigned int *user_constant_idx,
        const char *reg_mask)
{
    if (!constant->sysval_semantic)
    {
        shader_addline(buffer, "user_patch_constant[%u]%s", (*user_constant_idx)++, reg_mask);
        return;
    }

    switch (constant->sysval_semantic)
    {
        case 131:
        case 129:
        case 132:
        case 133:
            shader_addline(buffer, "gl_TessLevelOuter[%u]", constant->semantic_idx);
            break;
        case 130:
        case 128:
            shader_addline(buffer, "gl_TessLevelInner[%u]", constant->semantic_idx);
            break;
        default:
            FIXME("Unhandled sysval semantic %#x.\n", constant->sysval_semantic);
            shader_addline(buffer, "vec4(0.0)%s", reg_mask);
    }
}
