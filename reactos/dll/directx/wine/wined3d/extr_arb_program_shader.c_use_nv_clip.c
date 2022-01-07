
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int quirks; scalar_t__* supported; } ;
typedef int BOOL ;


 size_t NV_VERTEX_PROGRAM2_OPTION ;
 int WINED3D_QUIRK_NV_CLIP_BROKEN ;

__attribute__((used)) static inline BOOL use_nv_clip(const struct wined3d_gl_info *gl_info)
{
    return gl_info->supported[NV_VERTEX_PROGRAM2_OPTION]
            && !(gl_info->quirks & WINED3D_QUIRK_NV_CLIP_BROKEN);
}
