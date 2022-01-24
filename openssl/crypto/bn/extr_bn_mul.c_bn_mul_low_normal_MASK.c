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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC2(BN_ULONG *r, BN_ULONG *a, BN_ULONG *b, int n)
{
    FUNC1(r, a, n, b[0]);

    for (;;) {
        if (--n <= 0)
            return;
        FUNC0(&(r[1]), a, n, b[1]);
        if (--n <= 0)
            return;
        FUNC0(&(r[2]), a, n, b[2]);
        if (--n <= 0)
            return;
        FUNC0(&(r[3]), a, n, b[3]);
        if (--n <= 0)
            return;
        FUNC0(&(r[4]), a, n, b[4]);
        r += 4;
        b += 4;
    }
}