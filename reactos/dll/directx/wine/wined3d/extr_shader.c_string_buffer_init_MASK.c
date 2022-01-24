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
struct wined3d_string_buffer {int buffer_size; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*) ; 

BOOL FUNC3(struct wined3d_string_buffer *buffer)
{
    buffer->buffer_size = 32;
    if (!(buffer->buffer = FUNC1(buffer->buffer_size)))
    {
        FUNC0("Failed to allocate shader buffer memory.\n");
        return FALSE;
    }

    FUNC2(buffer);
    return TRUE;
}