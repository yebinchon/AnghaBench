
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef int DWORD ;


 int WINED3DSSF_GROUP_SHARED_MEMORY ;
 int WINED3DSSF_THREAD_GROUP ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_sync_flags(struct wined3d_string_buffer *buffer, DWORD sync_flags)
{
    if (sync_flags & WINED3DSSF_GROUP_SHARED_MEMORY)
    {
        shader_addline(buffer, "_g");
        sync_flags &= ~WINED3DSSF_GROUP_SHARED_MEMORY;
    }
    if (sync_flags & WINED3DSSF_THREAD_GROUP)
    {
        shader_addline(buffer, "_t");
        sync_flags &= ~WINED3DSSF_THREAD_GROUP;
    }

    if (sync_flags)
        shader_addline(buffer, "_unknown_flags(%#x)", sync_flags);
}
