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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct wined3d_string_buffer *buffer,
        const int *values, unsigned int size)
{
    int i;

    if (!size || size > 4)
    {
        FUNC0("Invalid vector size %u.\n", size);
        return;
    }

    if (size > 1)
        FUNC1(buffer, "ivec%u(", size);

    for (i = 0; i < size; ++i)
        FUNC1(buffer, i ? ", %#x" : "%#x", values[i]);

    if (size > 1)
        FUNC1(buffer, ")");
}