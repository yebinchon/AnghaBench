
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {int str; } ;
typedef int DWORD ;


 int FIXME (char*,int) ;
 int LOCATION_TO_STR (int ) ;
 int WINED3D_LOCATION_BUFFER ;
 int WINED3D_LOCATION_DISCARDED ;
 int WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_LOCATION_RB_MULTISAMPLE ;
 int WINED3D_LOCATION_RB_RESOLVED ;
 int WINED3D_LOCATION_SYSMEM ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 int WINED3D_LOCATION_TEXTURE_SRGB ;
 int WINED3D_LOCATION_USER_MEMORY ;
 int init_debug_buffer (struct debug_buffer*,char*) ;
 char const* wine_dbg_sprintf (char*,char const*,int ,char const*) ;
 int wined3d_popcount (int) ;

const char *wined3d_debug_location(DWORD location)
{
    struct debug_buffer buffer;
    const char *prefix = "";
    const char *suffix = "";

    if (wined3d_popcount(location) > 16)
    {
        prefix = "~(";
        location = ~location;
        suffix = ")";
    }

    init_debug_buffer(&buffer, "0");

    if (location & WINED3D_LOCATION_DISCARDED) { debug_append(&buffer, "WINED3D_LOCATION_DISCARDED", " | "); location &= ~WINED3D_LOCATION_DISCARDED; };
    if (location & WINED3D_LOCATION_SYSMEM) { debug_append(&buffer, "WINED3D_LOCATION_SYSMEM", " | "); location &= ~WINED3D_LOCATION_SYSMEM; };
    if (location & WINED3D_LOCATION_USER_MEMORY) { debug_append(&buffer, "WINED3D_LOCATION_USER_MEMORY", " | "); location &= ~WINED3D_LOCATION_USER_MEMORY; };
    if (location & WINED3D_LOCATION_BUFFER) { debug_append(&buffer, "WINED3D_LOCATION_BUFFER", " | "); location &= ~WINED3D_LOCATION_BUFFER; };
    if (location & WINED3D_LOCATION_TEXTURE_RGB) { debug_append(&buffer, "WINED3D_LOCATION_TEXTURE_RGB", " | "); location &= ~WINED3D_LOCATION_TEXTURE_RGB; };
    if (location & WINED3D_LOCATION_TEXTURE_SRGB) { debug_append(&buffer, "WINED3D_LOCATION_TEXTURE_SRGB", " | "); location &= ~WINED3D_LOCATION_TEXTURE_SRGB; };
    if (location & WINED3D_LOCATION_DRAWABLE) { debug_append(&buffer, "WINED3D_LOCATION_DRAWABLE", " | "); location &= ~WINED3D_LOCATION_DRAWABLE; };
    if (location & WINED3D_LOCATION_RB_MULTISAMPLE) { debug_append(&buffer, "WINED3D_LOCATION_RB_MULTISAMPLE", " | "); location &= ~WINED3D_LOCATION_RB_MULTISAMPLE; };
    if (location & WINED3D_LOCATION_RB_RESOLVED) { debug_append(&buffer, "WINED3D_LOCATION_RB_RESOLVED", " | "); location &= ~WINED3D_LOCATION_RB_RESOLVED; };

    if (location)
        FIXME("Unrecognized location flag(s) %#x.\n", location);

    return wine_dbg_sprintf("%s%s%s", prefix, buffer.str, suffix);
}
