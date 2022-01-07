
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_version {int major; int type; } ;
struct wined3d_gl_info {int limits; } ;
struct wined3d_context {int const* tex_unit_map; struct wined3d_gl_info* gl_info; } ;
typedef int DWORD ;


 int ERR (char*,int ) ;
 unsigned int MAX_FRAGMENT_SAMPLERS ;
 unsigned int MAX_TEXTURES ;
 unsigned int MAX_VERTEX_SAMPLERS ;


 int wined3d_gl_limits_get_texture_unit_range (int *,int ,unsigned int*,unsigned int*) ;

const DWORD *context_get_tex_unit_mapping(const struct wined3d_context *context,
        const struct wined3d_shader_version *shader_version, unsigned int *base, unsigned int *count)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (!shader_version)
    {
        *base = 0;
        *count = MAX_TEXTURES;
        return context->tex_unit_map;
    }

    if (shader_version->major >= 4)
    {
        wined3d_gl_limits_get_texture_unit_range(&gl_info->limits, shader_version->type, base, count);
        return ((void*)0);
    }

    switch (shader_version->type)
    {
        case 129:
            *base = 0;
            *count = MAX_FRAGMENT_SAMPLERS;
            break;
        case 128:
            *base = MAX_FRAGMENT_SAMPLERS;
            *count = MAX_VERTEX_SAMPLERS;
            break;
        default:
            ERR("Unhandled shader type %#x.\n", shader_version->type);
            *base = 0;
            *count = 0;
    }

    return context->tex_unit_map;
}
