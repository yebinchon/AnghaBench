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
typedef  int BN_ULONG ;

/* Variables and functions */
 int BN_MASK2 ; 
 int BN_SQR_RECURSIVE_SIZE_NORMAL ; 
 scalar_t__ FUNC0 (int*,int*,int*,int) ; 
 int FUNC1 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int,int*) ; 
 scalar_t__ FUNC5 (int*,int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 

void FUNC7(BN_ULONG *r, const BN_ULONG *a, int n2, BN_ULONG *t)
{
    int n = n2 / 2;
    int zero, c1;
    BN_ULONG ln, lo, *p;

    if (n2 == 4) {
# ifndef BN_SQR_COMBA
        FUNC4(r, a, 4, t);
# else
        bn_sqr_comba4(r, a);
# endif
        return;
    } else if (n2 == 8) {
# ifndef BN_SQR_COMBA
        FUNC4(r, a, 8, t);
# else
        bn_sqr_comba8(r, a);
# endif
        return;
    }
    if (n2 < BN_SQR_RECURSIVE_SIZE_NORMAL) {
        FUNC4(r, a, n2, t);
        return;
    }
    /* r=(a[0]-a[1])*(a[1]-a[0]) */
    c1 = FUNC1(a, &(a[n]), n);
    zero = 0;
    if (c1 > 0)
        FUNC5(t, a, &(a[n]), n);
    else if (c1 < 0)
        FUNC5(t, &(a[n]), a, n);
    else
        zero = 1;

    /* The result will always be negative unless it is zero */
    p = &(t[n2 * 2]);

    if (!zero)
        FUNC7(&(t[n2]), t, n, p);
    else
        FUNC6(&t[n2], 0, sizeof(*t) * n2);
    FUNC7(r, a, n, p);
    FUNC7(&(r[n2]), &(a[n]), n, p);

    /*-
     * t[32] holds (a[0]-a[1])*(a[1]-a[0]), it is negative or zero
     * r[10] holds (a[0]*b[0])
     * r[32] holds (b[1]*b[1])
     */

    c1 = (int)(FUNC0(t, r, &(r[n2]), n2));

    /* t[32] is negative */
    c1 -= (int)(FUNC5(&(t[n2]), t, &(t[n2]), n2));

    /*-
     * t[32] holds (a[0]-a[1])*(a[1]-a[0])+(a[0]*a[0])+(a[1]*a[1])
     * r[10] holds (a[0]*a[0])
     * r[32] holds (a[1]*a[1])
     * c1 holds the carry bits
     */
    c1 += (int)(FUNC0(&(r[n]), &(r[n]), &(t[n2]), n2));
    if (c1) {
        p = &(r[n + n2]);
        lo = *p;
        ln = (lo + c1) & BN_MASK2;
        *p = ln;

        /*
         * The overflow will stop before we over write words we should not
         * overwrite
         */
        if (ln < (BN_ULONG)c1) {
            do {
                p++;
                lo = *p;
                ln = (lo + 1) & BN_MASK2;
                *p = ln;
            } while (ln == 0);
        }
    }
}