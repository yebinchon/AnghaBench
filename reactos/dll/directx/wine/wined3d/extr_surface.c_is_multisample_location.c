
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_texture {scalar_t__ target; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GL_TEXTURE_2D_MULTISAMPLE ;
 scalar_t__ GL_TEXTURE_2D_MULTISAMPLE_ARRAY ;
 int TRUE ;
 scalar_t__ WINED3D_LOCATION_RB_MULTISAMPLE ;
 scalar_t__ WINED3D_LOCATION_TEXTURE_RGB ;
 scalar_t__ WINED3D_LOCATION_TEXTURE_SRGB ;

__attribute__((used)) static BOOL is_multisample_location(const struct wined3d_texture *texture, DWORD location)
{
    if (location == WINED3D_LOCATION_RB_MULTISAMPLE)
        return TRUE;
    if (location != WINED3D_LOCATION_TEXTURE_RGB && location != WINED3D_LOCATION_TEXTURE_SRGB)
        return FALSE;
    return texture->target == GL_TEXTURE_2D_MULTISAMPLE || texture->target == GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
}
