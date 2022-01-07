
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {unsigned int flags; TYPE_1__* ctx; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;


 int FIXME (char*,unsigned int) ;
 unsigned int WINED3DSSF_GROUP_SHARED_MEMORY ;
 unsigned int WINED3DSSF_THREAD_GROUP ;
 int shader_addline (struct wined3d_string_buffer*,char*) ;

__attribute__((used)) static void shader_glsl_sync(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    unsigned int sync_flags = ins->flags;

    if (sync_flags & WINED3DSSF_THREAD_GROUP)
    {
        shader_addline(buffer, "barrier();\n");
        sync_flags &= ~(WINED3DSSF_THREAD_GROUP | WINED3DSSF_GROUP_SHARED_MEMORY);
    }

    if (sync_flags & WINED3DSSF_GROUP_SHARED_MEMORY)
    {
        shader_addline(buffer, "memoryBarrierShared();\n");
        sync_flags &= ~WINED3DSSF_GROUP_SHARED_MEMORY;
    }

    if (sync_flags)
        FIXME("Unhandled sync flags %#x.\n", sync_flags);
}
