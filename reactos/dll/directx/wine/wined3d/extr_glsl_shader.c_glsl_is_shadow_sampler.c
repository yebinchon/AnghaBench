
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_version {int major; scalar_t__ type; } ;
struct TYPE_2__ {unsigned int sampler_comparison_mode; struct wined3d_shader_version shader_version; } ;
struct wined3d_shader {TYPE_1__ reg_maps; } ;
struct ps_compile_args {unsigned int shadow; } ;
typedef unsigned int BOOL ;


 scalar_t__ WINED3D_SHADER_TYPE_PIXEL ;

__attribute__((used)) static BOOL glsl_is_shadow_sampler(const struct wined3d_shader *shader,
        const struct ps_compile_args *ps_args, unsigned int resource_idx, unsigned int sampler_idx)
{
    const struct wined3d_shader_version *version = &shader->reg_maps.shader_version;

    if (version->major >= 4)
        return shader->reg_maps.sampler_comparison_mode & (1u << sampler_idx);
    else
        return version->type == WINED3D_SHADER_TYPE_PIXEL && (ps_args->shadow & (1u << resource_idx));
}
