
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int dummy; } ;
struct wined3d_shader_dst_param {size_t shift; } ;
struct glsl_dst_param {int mask_str; int reg_name; } ;
typedef enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
typedef int DWORD ;


 int FIXME (char*,int) ;





 int shader_addline (struct wined3d_string_buffer*,char*,int ,int ,int ) ;
 int shader_glsl_add_dst_param (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,struct glsl_dst_param*) ;
 int * shift_glsl_tab ;

__attribute__((used)) static DWORD shader_glsl_append_dst_ext(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_instruction *ins, const struct wined3d_shader_dst_param *dst,
        enum wined3d_data_type data_type)
{
    struct glsl_dst_param glsl_dst;
    DWORD mask;

    if ((mask = shader_glsl_add_dst_param(ins, dst, &glsl_dst)))
    {
        switch (data_type)
        {
            case 132:
                shader_addline(buffer, "%s%s = %s(",
                        glsl_dst.reg_name, glsl_dst.mask_str, shift_glsl_tab[dst->shift]);
                break;
            case 131:
                shader_addline(buffer, "%s%s = %sintBitsToFloat(",
                        glsl_dst.reg_name, glsl_dst.mask_str, shift_glsl_tab[dst->shift]);
                break;
            case 130:
            case 129:
            case 128:
                shader_addline(buffer, "%s%s = %suintBitsToFloat(",
                        glsl_dst.reg_name, glsl_dst.mask_str, shift_glsl_tab[dst->shift]);
                break;
            default:
                FIXME("Unhandled data type %#x.\n", data_type);
                shader_addline(buffer, "%s%s = %s(",
                        glsl_dst.reg_name, glsl_dst.mask_str, shift_glsl_tab[dst->shift]);
                break;
        }
    }

    return mask;
}
