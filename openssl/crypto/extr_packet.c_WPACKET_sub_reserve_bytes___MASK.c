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
typedef  int /*<<< orphan*/  WPACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,unsigned char**) ; 

int FUNC1(WPACKET *pkt, size_t len,
                                unsigned char **allocbytes, size_t lenbytes)
{
    if (!FUNC0(pkt, lenbytes + len, allocbytes))
        return 0;

    if (*allocbytes != NULL)
        *allocbytes += lenbytes;

    return 1;
}