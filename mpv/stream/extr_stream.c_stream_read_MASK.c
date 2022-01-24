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
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void*,int) ; 

int FUNC1(stream_t *s, void *mem, int total)
{
    int len = total;
    while (len > 0) {
        int read = FUNC0(s, mem, len);
        if (read <= 0)
            break; // EOF
        mem = (char *)mem + read;
        len -= read;
    }
    total -= len;
    return total;
}