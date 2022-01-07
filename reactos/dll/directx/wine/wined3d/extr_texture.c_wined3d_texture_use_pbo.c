
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int access; int usage; TYPE_1__* format; } ;
struct wined3d_texture {int flags; TYPE_2__ resource; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
struct TYPE_3__ {int conv_byte_count; } ;
typedef int BOOL ;


 size_t ARB_PIXEL_BUFFER_OBJECT ;
 int WINED3DUSAGE_DYNAMIC ;
 int WINED3D_RESOURCE_ACCESS_CPU ;
 int WINED3D_TEXTURE_COND_NP2_EMULATED ;
 int WINED3D_TEXTURE_PIN_SYSMEM ;

__attribute__((used)) static BOOL wined3d_texture_use_pbo(const struct wined3d_texture *texture, const struct wined3d_gl_info *gl_info)
{
    return !(texture->resource.access & WINED3D_RESOURCE_ACCESS_CPU)
            && texture->resource.usage & WINED3DUSAGE_DYNAMIC
            && gl_info->supported[ARB_PIXEL_BUFFER_OBJECT]
            && !texture->resource.format->conv_byte_count
            && !(texture->flags & (WINED3D_TEXTURE_PIN_SYSMEM | WINED3D_TEXTURE_COND_NP2_EMULATED));
}
