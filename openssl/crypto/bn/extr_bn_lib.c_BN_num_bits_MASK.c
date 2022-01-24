#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int top; int flags; int /*<<< orphan*/ * d; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int BN_BITS2 ; 
 int BN_FLG_CONSTTIME ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (TYPE_1__ const*) ; 

int FUNC4(const BIGNUM *a)
{
    int i = a->top - 1;
    FUNC2(a);

    if (a->flags & BN_FLG_CONSTTIME) {
        /*
         * We assume that BIGNUMs flagged as CONSTTIME have also been expanded
         * so that a->dmax is not leaking secret information.
         *
         * In other words, it's the caller's responsibility to ensure `a` has
         * been preallocated in advance to a public length if we hit this
         * branch.
         *
         */
        return FUNC3(a);
    }

    if (FUNC0(a))
        return 0;

    return ((i * BN_BITS2) + FUNC1(a->d[i]));
}