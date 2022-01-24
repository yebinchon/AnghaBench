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
struct wined3d_buffer {int flags; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_buffer*) ; 
 int WINED3D_BUFFER_PIN_SYSMEM ; 
 int /*<<< orphan*/  WINED3D_LOCATION_SYSMEM ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wined3d_buffer *buffer)
{
    if (buffer->flags & WINED3D_BUFFER_PIN_SYSMEM)
    {
        FUNC0("Not evicting system memory for buffer %p.\n", buffer);
        return;
    }

    FUNC0("Evicting system memory for buffer %p.\n", buffer);
    FUNC1(buffer, WINED3D_LOCATION_SYSMEM);
    FUNC2(&buffer->resource);
}