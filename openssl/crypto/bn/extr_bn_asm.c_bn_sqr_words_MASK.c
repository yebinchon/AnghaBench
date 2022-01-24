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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

void FUNC2(BN_ULONG *r, const BN_ULONG *a, int n)
{
    FUNC0(n >= 0);
    if (n <= 0)
        return;

# ifndef OPENSSL_SMALL_FOOTPRINT
    while (n & ~3) {
        FUNC1(r[0], r[1], a[0]);
        FUNC1(r[2], r[3], a[1]);
        FUNC1(r[4], r[5], a[2]);
        FUNC1(r[6], r[7], a[3]);
        a += 4;
        r += 8;
        n -= 4;
    }
# endif
    while (n) {
        FUNC1(r[0], r[1], a[0]);
        a++;
        r += 2;
        n--;
    }
}