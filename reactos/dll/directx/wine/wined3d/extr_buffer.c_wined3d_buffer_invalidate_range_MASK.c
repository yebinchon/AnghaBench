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
struct wined3d_buffer {int locations; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_buffer*,...) ; 
 int WINED3D_LOCATION_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_buffer*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct wined3d_buffer *buffer, DWORD location,
        unsigned int offset, unsigned int size)
{
    FUNC1("buffer %p, location %s, offset %u, size %u.\n",
            buffer, FUNC3(location), offset, size);

    if (location & WINED3D_LOCATION_BUFFER)
        FUNC2(buffer, offset, size);

    buffer->locations &= ~location;

    FUNC1("New locations flags are %s.\n", FUNC3(buffer->locations));

    if (!buffer->locations)
        FUNC0("Buffer %p does not have any up to date location.\n", buffer);
}