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
struct TYPE_6__ {scalar_t__ top; int /*<<< orphan*/ * d; } ;
typedef  int /*<<< orphan*/  BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_MASK2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,scalar_t__) ; 

int FUNC4(BIGNUM *a, BN_ULONG w)
{
    BN_ULONG ll;

    FUNC1(a);
    w &= BN_MASK2;
    if (a->top) {
        if (w == 0)
            FUNC0(a);
        else {
            ll = FUNC2(a->d, a->d, a->top, w);
            if (ll) {
                if (FUNC3(a, a->top + 1) == NULL)
                    return 0;
                a->d[a->top++] = ll;
            }
        }
    }
    FUNC1(a);
    return 1;
}