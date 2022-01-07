
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {int str; } ;
typedef scalar_t__ DWORD ;


 int ACCESS_TO_STR (int ) ;
 int FIXME (char*,scalar_t__) ;
 int WINED3D_RESOURCE_ACCESS_CPU ;
 int WINED3D_RESOURCE_ACCESS_GPU ;
 int WINED3D_RESOURCE_ACCESS_MAP_R ;
 int WINED3D_RESOURCE_ACCESS_MAP_W ;
 int init_debug_buffer (struct debug_buffer*,char*) ;
 char const* wine_dbg_sprintf (char*,int ) ;

const char *wined3d_debug_resource_access(DWORD access)
{
    struct debug_buffer buffer;

    init_debug_buffer(&buffer, "0");

    if (access & WINED3D_RESOURCE_ACCESS_GPU) { debug_append(&buffer, "WINED3D_RESOURCE_ACCESS_GPU", " | "); access &= ~WINED3D_RESOURCE_ACCESS_GPU; };
    if (access & WINED3D_RESOURCE_ACCESS_CPU) { debug_append(&buffer, "WINED3D_RESOURCE_ACCESS_CPU", " | "); access &= ~WINED3D_RESOURCE_ACCESS_CPU; };
    if (access & WINED3D_RESOURCE_ACCESS_MAP_R) { debug_append(&buffer, "WINED3D_RESOURCE_ACCESS_MAP_R", " | "); access &= ~WINED3D_RESOURCE_ACCESS_MAP_R; };
    if (access & WINED3D_RESOURCE_ACCESS_MAP_W) { debug_append(&buffer, "WINED3D_RESOURCE_ACCESS_MAP_W", " | "); access &= ~WINED3D_RESOURCE_ACCESS_MAP_W; };

    if (access)
        FIXME("Unrecognised access flag(s) %#x.\n", access);

    return wine_dbg_sprintf("%s", buffer.str);
}
