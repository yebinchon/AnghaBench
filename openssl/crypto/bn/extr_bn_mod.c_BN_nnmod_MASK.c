#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ neg; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ; 

int FUNC4(BIGNUM *r, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{
    /*
     * like BN_mod, but returns non-negative remainder (i.e., 0 <= r < |d|
     * always holds)
     */

    if (!(FUNC1(r, m, d, ctx)))
        return 0;
    if (!r->neg)
        return 1;
    /* now   -|d| < r < 0,  so we have to set  r := r + |d| */
    return (d->neg ? BN_sub : BN_add) (r, r, d);
}