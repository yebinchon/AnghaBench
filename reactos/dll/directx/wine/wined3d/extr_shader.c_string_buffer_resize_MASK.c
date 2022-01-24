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
struct wined3d_string_buffer {int buffer_size; unsigned int content_size; char* buffer; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*,unsigned int) ; 

BOOL FUNC2(struct wined3d_string_buffer *buffer, int rc)
{
    char *new_buffer;
    unsigned int new_buffer_size = buffer->buffer_size * 2;

    while (rc > 0 && (unsigned int)rc >= new_buffer_size - buffer->content_size)
        new_buffer_size *= 2;
    if (!(new_buffer = FUNC1(buffer->buffer, new_buffer_size)))
    {
        FUNC0("Failed to grow buffer.\n");
        buffer->buffer[buffer->content_size] = '\0';
        return FALSE;
    }
    buffer->buffer = new_buffer;
    buffer->buffer_size = new_buffer_size;
    return TRUE;
}