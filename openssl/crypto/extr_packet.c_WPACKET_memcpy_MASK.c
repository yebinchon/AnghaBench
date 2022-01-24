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
 int /*<<< orphan*/  FUNC1 (unsigned char*,void const*,size_t) ; 

int FUNC2(WPACKET *pkt, const void *src, size_t len)
{
    unsigned char *dest;

    if (len == 0)
        return 1;

    if (!FUNC0(pkt, len, &dest))
        return 0;

    if (dest != NULL)
        FUNC1(dest, src, len);

    return 1;
}