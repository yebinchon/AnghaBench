
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage; } ;
struct wined3d_texture {unsigned int level_count; int const target; TYPE_1__ resource; } ;
typedef int const GLenum ;
 int WINED3DUSAGE_LEGACY_CUBEMAP ;

__attribute__((used)) static inline GLenum wined3d_texture_get_sub_resource_target(const struct wined3d_texture *texture,
        unsigned int sub_resource_idx)
{
    static const GLenum cube_targets[] =
    {
        130,
        133,
        129,
        132,
        128,
        131,
    };

    return texture->resource.usage & WINED3DUSAGE_LEGACY_CUBEMAP
            ? cube_targets[sub_resource_idx / texture->level_count] : texture->target;
}
