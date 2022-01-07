
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_format {int color_fixup; } ;
typedef int BOOL ;


 size_t ARB_TEXTURE_SWIZZLE ;
 int is_complex_fixup (int ) ;
 int is_scaling_fixup (int ) ;

__attribute__((used)) static inline BOOL can_use_texture_swizzle(const struct wined3d_gl_info *gl_info, const struct wined3d_format *format)
{
    return gl_info->supported[ARB_TEXTURE_SWIZZLE] && !is_complex_fixup(format->color_fixup)
            && !is_scaling_fixup(format->color_fixup);
}
