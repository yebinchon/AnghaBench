#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {unsigned int flags; TYPE_1__* ctx; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int WINED3DSSF_GROUP_SHARED_MEMORY ; 
 unsigned int WINED3DSSF_THREAD_GROUP ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*) ; 

__attribute__((used)) static void FUNC2(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    unsigned int sync_flags = ins->flags;

    if (sync_flags & WINED3DSSF_THREAD_GROUP)
    {
        FUNC1(buffer, "barrier();\n");
        sync_flags &= ~(WINED3DSSF_THREAD_GROUP | WINED3DSSF_GROUP_SHARED_MEMORY);
    }

    if (sync_flags & WINED3DSSF_GROUP_SHARED_MEMORY)
    {
        FUNC1(buffer, "memoryBarrierShared();\n");
        sync_flags &= ~WINED3DSSF_GROUP_SHARED_MEMORY;
    }

    if (sync_flags)
        FUNC0("Unhandled sync flags %#x.\n", sync_flags);
}