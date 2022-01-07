
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_version {int dummy; } ;
struct wined3d_context {int dummy; } ;
typedef unsigned int DWORD ;


 unsigned int WINED3D_UNMAPPED_STAGE ;
 unsigned int* context_get_tex_unit_mapping (struct wined3d_context const*,struct wined3d_shader_version const*,unsigned int*,unsigned int*) ;

__attribute__((used)) static unsigned int shader_glsl_map_tex_unit(const struct wined3d_context *context,
        const struct wined3d_shader_version *shader_version, unsigned int sampler_idx)
{
    const DWORD *tex_unit_map;
    unsigned int base, count;

    tex_unit_map = context_get_tex_unit_mapping(context, shader_version, &base, &count);
    if (sampler_idx >= count)
        return WINED3D_UNMAPPED_STAGE;
    if (!tex_unit_map)
        return base + sampler_idx;
    return tex_unit_map[base + sampler_idx];
}
