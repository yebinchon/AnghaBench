#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int top; scalar_t__* d; scalar_t__ neg; } ;
typedef  scalar_t__ BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_USUB ; 
 scalar_t__ BN_MASK2 ; 
 int /*<<< orphan*/  BN_R_ARG2_LT_ARG3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__ const*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int) ; 

int FUNC5(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
    int max, min, dif;
    BN_ULONG t1, t2, borrow, *rp;
    const BN_ULONG *ap, *bp;

    FUNC1(a);
    FUNC1(b);

    max = a->top;
    min = b->top;
    dif = max - min;

    if (dif < 0) {              /* hmm... should not be happening */
        FUNC0(BN_F_BN_USUB, BN_R_ARG2_LT_ARG3);
        return 0;
    }

    if (FUNC4(r, max) == NULL)
        return 0;

    ap = a->d;
    bp = b->d;
    rp = r->d;

    borrow = FUNC3(rp, ap, bp, min);
    ap += min;
    rp += min;

    while (dif) {
        dif--;
        t1 = *(ap++);
        t2 = (t1 - borrow) & BN_MASK2;
        *(rp++) = t2;
        borrow &= (t1 == 0);
    }

    while (max && *--rp == 0)
        max--;

    r->top = max;
    r->neg = 0;
    FUNC2(r);

    return 1;
}