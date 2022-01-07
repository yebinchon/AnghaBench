
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int dummy; } ;
struct wined3d_shader_dst_param {int write_mask; int reg; } ;
typedef int DWORD ;


 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_1 ;
 int WINED3DSP_WRITEMASK_2 ;
 int WINED3DSP_WRITEMASK_3 ;
 int WINED3DSP_WRITEMASK_ALL ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_dump_register (struct wined3d_string_buffer*,int *,struct wined3d_shader_version const*) ;

__attribute__((used)) static void shader_dump_dst_param(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_dst_param *param, const struct wined3d_shader_version *shader_version)
{
    DWORD write_mask = param->write_mask;

    shader_dump_register(buffer, &param->reg, shader_version);

    if (write_mask && write_mask != WINED3DSP_WRITEMASK_ALL)
    {
        static const char write_mask_chars[] = "xyzw";

        shader_addline(buffer, ".");
        if (write_mask & WINED3DSP_WRITEMASK_0)
            shader_addline(buffer, "%c", write_mask_chars[0]);
        if (write_mask & WINED3DSP_WRITEMASK_1)
            shader_addline(buffer, "%c", write_mask_chars[1]);
        if (write_mask & WINED3DSP_WRITEMASK_2)
            shader_addline(buffer, "%c", write_mask_chars[2]);
        if (write_mask & WINED3DSP_WRITEMASK_3)
            shader_addline(buffer, "%c", write_mask_chars[3]);
    }
}
