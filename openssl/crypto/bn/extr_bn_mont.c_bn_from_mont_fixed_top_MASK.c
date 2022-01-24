#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  N; int /*<<< orphan*/  ri; int /*<<< orphan*/  Ni; } ;
typedef  TYPE_1__ BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC12(BIGNUM *ret, const BIGNUM *a, BN_MONT_CTX *mont,
                           BN_CTX *ctx)
{
    int retn = 0;
#ifdef MONT_WORD
    BIGNUM *t;

    BN_CTX_start(ctx);
    if ((t = BN_CTX_get(ctx)) && BN_copy(t, a)) {
        retn = bn_from_montgomery_word(ret, t, mont);
    }
    BN_CTX_end(ctx);
#else                           /* !MONT_WORD */
    BIGNUM *t1, *t2;

    FUNC2(ctx);
    t1 = FUNC1(ctx);
    t2 = FUNC1(ctx);
    if (t2 == NULL)
        goto err;

    if (!FUNC4(t1, a))
        goto err;
    FUNC5(t1, mont->ri);

    if (!FUNC6(t2, t1, &mont->Ni, ctx))
        goto err;
    FUNC5(t2, mont->ri);

    if (!FUNC6(t1, t2, &mont->N, ctx))
        goto err;
    if (!FUNC3(t2, a, t1))
        goto err;
    if (!FUNC7(ret, t2, mont->ri))
        goto err;

    if (FUNC8(ret, &(mont->N)) >= 0) {
        if (!FUNC9(ret, ret, &(mont->N)))
            goto err;
    }
    retn = 1;
    FUNC10(ret);
 err:
    FUNC0(ctx);
#endif                          /* MONT_WORD */
    return retn;
}