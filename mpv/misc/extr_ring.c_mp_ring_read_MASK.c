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
struct mp_ring {int /*<<< orphan*/  rpos; scalar_t__ buffer; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,scalar_t__,int) ; 
 int FUNC3 (struct mp_ring*) ; 
 int FUNC4 (struct mp_ring*) ; 
 int FUNC5 (struct mp_ring*) ; 

int FUNC6(struct mp_ring *buffer, unsigned char *dest, int len)
{
    int size     = FUNC5(buffer);
    int buffered = FUNC3(buffer);
    int read_len = FUNC0(len, buffered);
    int read_ptr = FUNC4(buffer) % size;

    int len1 = FUNC0(size - read_ptr, read_len);
    int len2 = read_len - len1;

    if (dest) {
        FUNC2(dest, buffer->buffer + read_ptr, len1);
        FUNC2(dest + len1, buffer->buffer, len2);
    }

    FUNC1(&buffer->rpos, read_len);

    return read_len;
}