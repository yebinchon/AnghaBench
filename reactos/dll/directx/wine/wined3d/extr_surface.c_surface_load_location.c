
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_surface {int dummy; } ;
struct wined3d_context {int dummy; } ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,int) ;
 int FALSE ;
 int TRACE (char*,struct wined3d_surface*,int ) ;
 int surface_load_drawable (struct wined3d_surface*,struct wined3d_context*) ;
 int surface_load_renderbuffer (struct wined3d_surface*,struct wined3d_context*,int) ;
 int surface_load_sysmem (struct wined3d_surface*,struct wined3d_context*,int) ;
 int surface_load_texture (struct wined3d_surface*,struct wined3d_context*,int) ;
 int wined3d_debug_location (int) ;

BOOL surface_load_location(struct wined3d_surface *surface, struct wined3d_context *context, DWORD location)
{
    TRACE("surface %p, location %s.\n", surface, wined3d_debug_location(location));

    switch (location)
    {
        case 128:
        case 131:
        case 135:
            return surface_load_sysmem(surface, context, location);

        case 134:
            return surface_load_drawable(surface, context);

        case 132:
        case 133:
            return surface_load_renderbuffer(surface, context, location);

        case 130:
        case 129:
            return surface_load_texture(surface, context,
                    location == 129);

        default:
            ERR("Don't know how to handle location %#x.\n", location);
            return FALSE;
    }
}
