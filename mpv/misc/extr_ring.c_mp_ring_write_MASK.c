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
struct mp_ring {int /*<<< orphan*/  wpos; scalar_t__ buffer; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char*,int) ; 
 int FUNC3 (struct mp_ring*) ; 
 int FUNC4 (struct mp_ring*) ; 
 int FUNC5 (struct mp_ring*) ; 

int FUNC6(struct mp_ring *buffer, unsigned char *src, int len)
{
    int size      = FUNC5(buffer);
    int free      = FUNC3(buffer);
    int write_len = FUNC0(len, free);
    int write_ptr = FUNC4(buffer) % size;

    int len1 = FUNC0(size - write_ptr, write_len);
    int len2 = write_len - len1;

    FUNC2(buffer->buffer + write_ptr, src, len1);
    FUNC2(buffer->buffer, src + len1, len2);

    FUNC1(&buffer->wpos, write_len);

    return write_len;
}