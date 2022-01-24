#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
typedef  int DWORD ;

/* Variables and functions */
 int WINED3DSSF_GROUP_SHARED_MEMORY ; 
 int WINED3DSSF_THREAD_GROUP ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct wined3d_string_buffer *buffer, DWORD sync_flags)
{
    if (sync_flags & WINED3DSSF_GROUP_SHARED_MEMORY)
    {
        FUNC0(buffer, "_g");
        sync_flags &= ~WINED3DSSF_GROUP_SHARED_MEMORY;
    }
    if (sync_flags & WINED3DSSF_THREAD_GROUP)
    {
        FUNC0(buffer, "_t");
        sync_flags &= ~WINED3DSSF_THREAD_GROUP;
    }

    if (sync_flags)
        FUNC0(buffer, "_unknown_flags(%#x)", sync_flags);
}