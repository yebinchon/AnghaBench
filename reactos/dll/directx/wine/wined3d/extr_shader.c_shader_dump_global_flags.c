
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
typedef int DWORD ;


 int WINED3DSGF_ENABLE_RAW_AND_STRUCTURED_BUFFERS ;
 int WINED3DSGF_FORCE_EARLY_DEPTH_STENCIL ;
 int WINED3DSGF_REFACTORING_ALLOWED ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_global_flags(struct wined3d_string_buffer *buffer, DWORD global_flags)
{
    if (global_flags & WINED3DSGF_REFACTORING_ALLOWED)
    {
        shader_addline(buffer, "refactoringAllowed");
        global_flags &= ~WINED3DSGF_REFACTORING_ALLOWED;
        if (global_flags)
            shader_addline(buffer, " | ");
    }

    if (global_flags & WINED3DSGF_FORCE_EARLY_DEPTH_STENCIL)
    {
        shader_addline(buffer, "forceEarlyDepthStencil");
        global_flags &= ~WINED3DSGF_FORCE_EARLY_DEPTH_STENCIL;
        if (global_flags)
            shader_addline(buffer, " | ");
    }

    if (global_flags & WINED3DSGF_ENABLE_RAW_AND_STRUCTURED_BUFFERS)
    {
        shader_addline(buffer, "enableRawAndStructuredBuffers");
        global_flags &= ~WINED3DSGF_ENABLE_RAW_AND_STRUCTURED_BUFFERS;
    }

    if (global_flags)
        shader_addline(buffer, "unknown_flags(%#x)", global_flags);
}
