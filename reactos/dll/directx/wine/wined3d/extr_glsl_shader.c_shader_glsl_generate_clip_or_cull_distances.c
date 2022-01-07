
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_signature_element {scalar_t__ sysval_semantic; unsigned int mask; int register_idx; scalar_t__ semantic_idx; } ;
typedef int DWORD ;


 unsigned int WINED3DSP_WRITEMASK_0 ;
 scalar_t__ WINED3D_SV_CLIP_DISTANCE ;
 int shader_addline (struct wined3d_string_buffer*,char*,char const*,unsigned int,int ,char*) ;
 int shader_glsl_write_mask_to_str (unsigned int,char*) ;
 unsigned int wined3d_popcount (int) ;

__attribute__((used)) static void shader_glsl_generate_clip_or_cull_distances(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_signature_element *element, DWORD clip_or_cull_distance_mask)
{
    unsigned int i, clip_or_cull_index;
    const char *name;
    char reg_mask[6];

    name = element->sysval_semantic == WINED3D_SV_CLIP_DISTANCE ? "Clip" : "Cull";

    clip_or_cull_index = element->semantic_idx ? wined3d_popcount(clip_or_cull_distance_mask & 0xf) : 0;
    for (i = 0; i < 4; ++i)
    {
        if (!(element->mask & (WINED3DSP_WRITEMASK_0 << i)))
            continue;

        shader_glsl_write_mask_to_str(WINED3DSP_WRITEMASK_0 << i, reg_mask);
        shader_addline(buffer, "gl_%sDistance[%u] = outputs[%u]%s;\n",
                name, clip_or_cull_index, element->register_idx, reg_mask);
        ++clip_or_cull_index;
    }
}
