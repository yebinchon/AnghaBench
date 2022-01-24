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
typedef  int /*<<< orphan*/  const fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC2(fe out, const fe z)
{
    fe t0;
    fe t1;
    fe t2;
    fe t3;
    int i;

    /*
     * Compute z ** -1 = z ** (2 ** 255 - 19 - 2) with the exponent as
     * 2 ** 255 - 21 = (2 ** 5) * (2 ** 250 - 1) + 11.
     */

    /* t0 = z ** 2 */
    FUNC1(t0, z);

    /* t1 = t0 ** (2 ** 2) = z ** 8 */
    FUNC1(t1, t0);
    FUNC1(t1, t1);

    /* t1 = z * t1 = z ** 9 */
    FUNC0(t1, z, t1);
    /* t0 = t0 * t1 = z ** 11 -- stash t0 away for the end. */
    FUNC0(t0, t0, t1);

    /* t2 = t0 ** 2 = z ** 22 */
    FUNC1(t2, t0);

    /* t1 = t1 * t2 = z ** (2 ** 5 - 1) */
    FUNC0(t1, t1, t2);

    /* t2 = t1 ** (2 ** 5) = z ** ((2 ** 5) * (2 ** 5 - 1)) */
    FUNC1(t2, t1);
    for (i = 1; i < 5; ++i) {
        FUNC1(t2, t2);
    }

    /* t1 = t1 * t2 = z ** ((2 ** 5 + 1) * (2 ** 5 - 1)) = z ** (2 ** 10 - 1) */
    FUNC0(t1, t2, t1);

    /* Continuing similarly... */

    /* t2 = z ** (2 ** 20 - 1) */
    FUNC1(t2, t1);
    for (i = 1; i < 10; ++i) {
        FUNC1(t2, t2);
    }
    FUNC0(t2, t2, t1);

    /* t2 = z ** (2 ** 40 - 1) */
    FUNC1(t3, t2);
    for (i = 1; i < 20; ++i) {
        FUNC1(t3, t3);
    }
    FUNC0(t2, t3, t2);

    /* t2 = z ** (2 ** 10) * (2 ** 40 - 1) */
    for (i = 0; i < 10; ++i) {
        FUNC1(t2, t2);
    }
    /* t1 = z ** (2 ** 50 - 1) */
    FUNC0(t1, t2, t1);

    /* t2 = z ** (2 ** 100 - 1) */
    FUNC1(t2, t1);
    for (i = 1; i < 50; ++i) {
        FUNC1(t2, t2);
    }
    FUNC0(t2, t2, t1);

    /* t2 = z ** (2 ** 200 - 1) */
    FUNC1(t3, t2);
    for (i = 1; i < 100; ++i) {
        FUNC1(t3, t3);
    }
    FUNC0(t2, t3, t2);

    /* t2 = z ** ((2 ** 50) * (2 ** 200 - 1) */
    FUNC1(t2, t2);
    for (i = 1; i < 50; ++i) {
        FUNC1(t2, t2);
    }

    /* t1 = z ** (2 ** 250 - 1) */
    FUNC0(t1, t2, t1);

    /* t1 = z ** ((2 ** 5) * (2 ** 250 - 1)) */
    FUNC1(t1, t1);
    for (i = 1; i < 5; ++i) {
        FUNC1(t1, t1);
    }

    /* Recall t0 = z ** 11; out = z ** (2 ** 255 - 21) */
    FUNC0(out, t1, t0);
}