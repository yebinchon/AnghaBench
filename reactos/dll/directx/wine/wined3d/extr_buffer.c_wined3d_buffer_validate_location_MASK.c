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
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_buffer*,...) ; 
 int WINED3D_LOCATION_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct wined3d_buffer *buffer, DWORD location)
{
    FUNC0("buffer %p, location %s.\n", buffer, FUNC2(location));

    if (location & WINED3D_LOCATION_BUFFER)
        FUNC1(buffer);

    buffer->locations |= location;

    FUNC0("New locations flags are %s.\n", FUNC2(buffer->locations));
}