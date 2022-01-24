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
 int /*<<< orphan*/  FUNC5 (int*,int*,int*,int,int) ; 
 scalar_t__ FUNC6 (int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 

void FUNC8(BN_ULONG *r, BN_ULONG *a, BN_ULONG *b, int n2,
                      int dna, int dnb, BN_ULONG *t)
{
    int n = n2 / 2, c1, c2;
    int tna = n + dna, tnb = n + dnb;
    unsigned int neg, zero;
    BN_ULONG ln, lo, *p;

# ifdef BN_MUL_COMBA
#  if 0
    if (n2 == 4) {
        bn_mul_comba4(r, a, b);
        return;
    }
#  endif
    /*
     * Only call bn_mul_comba 8 if n2 == 8 and the two arrays are complete
     * [steve]
     */
    if (n2 == 8 && dna == 0 && dnb == 0) {
        bn_mul_comba8(r, a, b);
        return;
    }
# endif                         /* BN_MUL_COMBA */
    /* Else do normal multiply */
    if (n2 < BN_MUL_RECURSIVE_SIZE_NORMAL) {
        FUNC4(r, a, n2 + dna, b, n2 + dnb);
        if ((dna + dnb) < 0)
            FUNC7(&r[2 * n2 + dna + dnb], 0,
                   sizeof(BN_ULONG) * -(dna + dnb));
        return;
    }
    /* r=(a[0]-a[1])*(b[1]-b[0]) */
    c1 = FUNC1(a, &(a[n]), tna, n - tna);
    c2 = FUNC1(&(b[n]), b, tnb, tnb - n);
    zero = neg = 0;
    switch (c1 * 3 + c2) {
    case -4:
        FUNC5(t, &(a[n]), a, tna, tna - n); /* - */
        FUNC5(&(t[n]), b, &(b[n]), tnb, n - tnb); /* - */
        break;
    case -3:
        zero = 1;
        break;
    case -2:
        FUNC5(t, &(a[n]), a, tna, tna - n); /* - */
        FUNC5(&(t[n]), &(b[n]), b, tnb, tnb - n); /* + */
        neg = 1;
        break;
    case -1:
    case 0:
    case 1:
        zero = 1;
        break;
    case 2:
        FUNC5(t, a, &(a[n]), tna, n - tna); /* + */
        FUNC5(&(t[n]), b, &(b[n]), tnb, n - tnb); /* - */
        neg = 1;
        break;
    case 3:
        zero = 1;
        break;
    case 4:
        FUNC5(t, a, &(a[n]), tna, n - tna);
        FUNC5(&(t[n]), &(b[n]), b, tnb, tnb - n);
        break;
    }

# ifdef BN_MUL_COMBA
    if (n == 4 && dna == 0 && dnb == 0) { /* XXX: bn_mul_comba4 could take
                                           * extra args to do this well */
        if (!zero)
            bn_mul_comba4(&(t[n2]), t, &(t[n]));
        else
            memset(&t[n2], 0, sizeof(*t) * 8);

        bn_mul_comba4(r, a, b);
        bn_mul_comba4(&(r[n2]), &(a[n]), &(b[n]));
    } else if (n == 8 && dna == 0 && dnb == 0) { /* XXX: bn_mul_comba8 could
                                                  * take extra args to do
                                                  * this well */
        if (!zero)
            bn_mul_comba8(&(t[n2]), t, &(t[n]));
        else
            memset(&t[n2], 0, sizeof(*t) * 16);

        bn_mul_comba8(r, a, b);
        bn_mul_comba8(&(r[n2]), &(a[n]), &(b[n]));
    } else
# endif                         /* BN_MUL_COMBA */
    {
        p = &(t[n2 * 2]);
        if (!zero)
            FUNC8(&(t[n2]), t, &(t[n]), n, 0, 0, p);
        else
            FUNC7(&t[n2], 0, sizeof(*t) * n2);
        FUNC8(r, a, b, n, 0, 0, p);
        FUNC8(&(r[n2]), &(a[n]), &(b[n]), n, dna, dnb, p);
    }

    /*-
     * t[32] holds (a[0]-a[1])*(b[1]-b[0]), c1 is the sign
     * r[10] holds (a[0]*b[0])
     * r[32] holds (b[1]*b[1])
     */

    c1 = (int)(FUNC0(t, r, &(r[n2]), n2));

    if (neg) {                  /* if t[32] is negative */
        c1 -= (int)(FUNC6(&(t[n2]), t, &(t[n2]), n2));
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