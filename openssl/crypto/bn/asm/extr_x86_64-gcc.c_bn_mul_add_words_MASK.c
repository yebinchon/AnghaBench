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
typedef  int /*<<< orphan*/  BN_ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BN_ULONG FUNC1(BN_ULONG *rp, const BN_ULONG *ap, int num,
                          BN_ULONG w)
{
    BN_ULONG c1 = 0;

    if (num <= 0)
        return c1;

    while (num & ~3) {
        FUNC0(rp[0], ap[0], w, c1);
        FUNC0(rp[1], ap[1], w, c1);
        FUNC0(rp[2], ap[2], w, c1);
        FUNC0(rp[3], ap[3], w, c1);
        ap += 4;
        rp += 4;
        num -= 4;
    }
    if (num) {
        FUNC0(rp[0], ap[0], w, c1);
        if (--num == 0)
            return c1;
        FUNC0(rp[1], ap[1], w, c1);
        if (--num == 0)
            return c1;
        FUNC0(rp[2], ap[2], w, c1);
        return c1;
    }

    return c1;
}