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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 

BIGNUM *FUNC5(const BIGNUM *a, const BIGNUM *N, const BIGNUM *g)
{
    BN_CTX *bn_ctx;
    BIGNUM *A = NULL;

    if (a == NULL || N == NULL || g == NULL || (bn_ctx = FUNC1()) == NULL)
        return NULL;

    if ((A = FUNC4()) != NULL && !FUNC3(A, g, a, N, bn_ctx)) {
        FUNC2(A);
        A = NULL;
    }
    FUNC0(bn_ctx);
    return A;
}