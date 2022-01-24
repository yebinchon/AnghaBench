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
typedef  scalar_t__ in_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

int
FUNC1(in_addr_t netmask)
{
    int i;
    const int addrlen = sizeof(in_addr_t) * 8;

    for (i = 0; i <= addrlen; ++i)
    {
        in_addr_t mask = FUNC0(i);
        if (mask == netmask)
        {
            return i;
        }
    }
    return -1;
}