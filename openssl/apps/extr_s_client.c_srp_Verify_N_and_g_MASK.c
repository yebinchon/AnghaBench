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
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC10(const BIGNUM *N, const BIGNUM *g)
{
    BN_CTX *bn_ctx = FUNC1();
    BIGNUM *p = FUNC8();
    BIGNUM *r = FUNC8();
    int ret =
        g != NULL && N != NULL && bn_ctx != NULL && FUNC6(N) &&
        FUNC3(N, bn_ctx, NULL) == 1 &&
        p != NULL && FUNC9(p, N) &&
        /* p = (N-1)/2 */
        FUNC3(p, bn_ctx, NULL) == 1 &&
        r != NULL &&
        /* verify g^((N-1)/2) == -1 (mod N) */
        FUNC7(r, g, p, N, bn_ctx) &&
        FUNC2(r, 1) && FUNC4(r, N) == 0;

    FUNC5(r);
    FUNC5(p);
    FUNC0(bn_ctx);
    return ret;
}