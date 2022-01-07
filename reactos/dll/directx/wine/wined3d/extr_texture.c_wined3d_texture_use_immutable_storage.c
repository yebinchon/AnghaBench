
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int format_flags; } ;
struct wined3d_texture {TYPE_1__ resource; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
typedef int BOOL ;


 size_t ARB_TEXTURE_STORAGE ;
 int WINED3DFMT_FLAG_HEIGHT_SCALE ;

__attribute__((used)) static BOOL wined3d_texture_use_immutable_storage(const struct wined3d_texture *texture,
        const struct wined3d_gl_info *gl_info)
{


    return gl_info->supported[ARB_TEXTURE_STORAGE]
            && !(texture->resource.format_flags & WINED3DFMT_FLAG_HEIGHT_SCALE);
}
