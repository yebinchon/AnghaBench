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
typedef  scalar_t__ BN_ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const*,int,int,scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC2(BN_ULONG *r, const BN_ULONG *a)
{
    BN_ULONG c1, c2, c3;

    c1 = 0;
    c2 = 0;
    c3 = 0;
    FUNC0(a, 0, c1, c2, c3);
    r[0] = c1;
    c1 = 0;
    FUNC1(a, 1, 0, c2, c3, c1);
    r[1] = c2;
    c2 = 0;
    FUNC0(a, 1, c3, c1, c2);
    FUNC1(a, 2, 0, c3, c1, c2);
    r[2] = c3;
    c3 = 0;
    FUNC1(a, 3, 0, c1, c2, c3);
    FUNC1(a, 2, 1, c1, c2, c3);
    r[3] = c1;
    c1 = 0;
    FUNC0(a, 2, c2, c3, c1);
    FUNC1(a, 3, 1, c2, c3, c1);
    r[4] = c2;
    c2 = 0;
    FUNC1(a, 3, 2, c3, c1, c2);
    r[5] = c3;
    c3 = 0;
    FUNC0(a, 3, c1, c2, c3);
    r[6] = c1;
    r[7] = c2;
}