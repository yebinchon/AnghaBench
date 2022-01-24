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
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(BIGNUM *pi, const BIGNUM *Xpi, BN_CTX *ctx,
                             BN_GENCB *cb)
{
    int i = 0, is_prime;
    if (!FUNC3(pi, Xpi))
        return 0;
    if (!FUNC4(pi) && !FUNC1(pi, 1))
        return 0;
    for (;;) {
        i++;
        FUNC0(cb, 0, i);
        /* NB 27 MR is specified in X9.31 */
        is_prime = FUNC2(pi, ctx, cb);
        if (is_prime < 0)
            return 0;
        if (is_prime)
            break;
        if (!FUNC1(pi, 2))
            return 0;
    }
    FUNC0(cb, 2, i);
    return 1;
}