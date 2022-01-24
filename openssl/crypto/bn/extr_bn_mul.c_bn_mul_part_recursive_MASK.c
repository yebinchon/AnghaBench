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
 int BN_MUL_RECURSIVE_SIZE_NORMAL ; 
 scalar_t__ FUNC0 (int*,int*,int*,int) ; 
 int FUNC1 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*,int,int) ; 
 scalar_t__ FUNC7 (int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int tn ; 

void FUNC9(BN_ULONG *r, BN_ULONG *a, BN_ULONG *b, int n,
                           int tna, int tnb, BN_ULONG *t)
{
    int i, j, n2 = n * 2;
    int c1, c2, neg;
    BN_ULONG ln, lo, *p;

    if (n < 8) {
        FUNC4(r, a, n + tna, b, n + tnb);
        return;
    }

    /* r=(a[0]-a[1])*(b[1]-b[0]) */
    c1 = FUNC1(a, &(a[n]), tna, n - tna);
    c2 = FUNC1(&(b[n]), b, tnb, tnb - n);
    neg = 0;
    switch (c1 * 3 + c2) {
    case -4:
        FUNC6(t, &(a[n]), a, tna, tna - n); /* - */
        FUNC6(&(t[n]), b, &(b[n]), tnb, n - tnb); /* - */
        break;
    case -3:
    case -2:
        FUNC6(t, &(a[n]), a, tna, tna - n); /* - */
        FUNC6(&(t[n]), &(b[n]), b, tnb, tnb - n); /* + */
        neg = 1;
        break;
    case -1:
    case 0:
    case 1:
    case 2:
        FUNC6(t, a, &(a[n]), tna, n - tna); /* + */
        FUNC6(&(t[n]), b, &(b[n]), tnb, n - tnb); /* - */
        neg = 1;
        break;
    case 3:
    case 4:
        FUNC6(t, a, &(a[n]), tna, n - tna);
        FUNC6(&(t[n]), &(b[n]), b, tnb, tnb - n);
        break;
    }
    /*
     * The zero case isn't yet implemented here. The speedup would probably
     * be negligible.
     */
# if 0
    if (n == 4) {
        bn_mul_comba4(&(t[n2]), t, &(t[n]));
        bn_mul_comba4(r, a, b);
        bn_mul_normal(&(r[n2]), &(a[n]), tn, &(b[n]), tn);
        memset(&r[n2 + tn * 2], 0, sizeof(*r) * (n2 - tn * 2));
    } else
# endif
    if (n == 8) {
        FUNC3(&(t[n2]), t, &(t[n]));
        FUNC3(r, a, b);
        FUNC4(&(r[n2]), &(a[n]), tna, &(b[n]), tnb);
        FUNC8(&r[n2 + tna + tnb], 0, sizeof(*r) * (n2 - tna - tnb));
    } else {
        p = &(t[n2 * 2]);
        FUNC5(&(t[n2]), t, &(t[n]), n, 0, 0, p);
        FUNC5(r, a, b, n, 0, 0, p);
        i = n / 2;
        /*
         * If there is only a bottom half to the number, just do it
         */
        if (tna > tnb)
            j = tna - i;
        else
            j = tnb - i;
        if (j == 0) {
            FUNC5(&(r[n2]), &(a[n]), &(b[n]),
                             i, tna - i, tnb - i, p);
            FUNC8(&r[n2 + i * 2], 0, sizeof(*r) * (n2 - i * 2));
        } else if (j > 0) {     /* eg, n == 16, i == 8 and tn == 11 */
            FUNC9(&(r[n2]), &(a[n]), &(b[n]),
                                  i, tna - i, tnb - i, p);
            FUNC8(&(r[n2 + tna + tnb]), 0,
                   sizeof(BN_ULONG) * (n2 - tna - tnb));
        } else {                /* (j < 0) eg, n == 16, i == 8 and tn == 5 */

            FUNC8(&r[n2], 0, sizeof(*r) * n2);
            if (tna < BN_MUL_RECURSIVE_SIZE_NORMAL
                && tnb < BN_MUL_RECURSIVE_SIZE_NORMAL) {
                FUNC4(&(r[n2]), &(a[n]), tna, &(b[n]), tnb);
            } else {
                for (;;) {
                    i /= 2;
                    /*
                     * these simplified conditions work exclusively because
                     * difference between tna and tnb is 1 or 0
                     */
                    if (i < tna || i < tnb) {
                        FUNC9(&(r[n2]),
                                              &(a[n]), &(b[n]),
                                              i, tna - i, tnb - i, p);
                        break;
                    } else if (i == tna || i == tnb) {
                        FUNC5(&(r[n2]),
                                         &(a[n]), &(b[n]),
                                         i, tna - i, tnb - i, p);
                        break;
                    }
                }
            }
        }
    }

    /*-
     * t[32] holds (a[0]-a[1])*(b[1]-b[0]), c1 is the sign
     * r[10] holds (a[0]*b[0])
     * r[32] holds (b[1]*b[1])
     */

    c1 = (int)(FUNC0(t, r, &(r[n2]), n2));

    if (neg) {                  /* if t[32] is negative */
        c1 -= (int)(FUNC7(&(t[n2]), t, &(t[n2]), n2));
    } else {
        /* Might have a carry */
        c1 += (int)(FUNC0(&(t[n2]), &(t[n2]), t, n2));
    }

    /*-
     * t[32] holds (a[0]-a[1])*(b[1]-b[0])+(a[0]*b[0])+(a[1]*b[1])
     * r[10] holds (a[0]*b[0])
     * r[32] holds (b[1]*b[1])
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