#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/ * g; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ DH ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DH_F_DH_BUILTIN_GENPARAMS ; 
 int DH_GENERATOR_2 ; 
 int DH_GENERATOR_5 ; 
 int DH_MIN_MODULUS_BITS ; 
 int /*<<< orphan*/  DH_R_BAD_GENERATOR ; 
 int /*<<< orphan*/  DH_R_MODULUS_TOO_LARGE ; 
 int /*<<< orphan*/  DH_R_MODULUS_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int OPENSSL_DH_MAX_MODULUS_BITS ; 

__attribute__((used)) static int FUNC10(DH *ret, int prime_len, int generator,
                                BN_GENCB *cb)
{
    BIGNUM *t1, *t2;
    int g, ok = -1;
    BN_CTX *ctx = NULL;

    if (prime_len > OPENSSL_DH_MAX_MODULUS_BITS) {
        FUNC9(DH_F_DH_BUILTIN_GENPARAMS, DH_R_MODULUS_TOO_LARGE);
        return 0;
    }

    if (prime_len < DH_MIN_MODULUS_BITS) {
        FUNC9(DH_F_DH_BUILTIN_GENPARAMS, DH_R_MODULUS_TOO_SMALL);
        return 0;
    }

    ctx = FUNC3();
    if (ctx == NULL)
        goto err;
    FUNC4(ctx);
    t1 = FUNC2(ctx);
    t2 = FUNC2(ctx);
    if (t2 == NULL)
        goto err;

    /* Make sure 'ret' has the necessary elements */
    if (!ret->p && ((ret->p = FUNC7()) == NULL))
        goto err;
    if (!ret->g && ((ret->g = FUNC7()) == NULL))
        goto err;

    if (generator <= 1) {
        FUNC9(DH_F_DH_BUILTIN_GENPARAMS, DH_R_BAD_GENERATOR);
        goto err;
    }
    if (generator == DH_GENERATOR_2) {
        if (!FUNC8(t1, 24))
            goto err;
        if (!FUNC8(t2, 23))
            goto err;
        g = 2;
    } else if (generator == DH_GENERATOR_5) {
        if (!FUNC8(t1, 60))
            goto err;
        if (!FUNC8(t2, 59))
            goto err;
        g = 5;
    } else {
        /*
         * in the general case, don't worry if 'generator' is a generator or
         * not: since we are using safe primes, it will generate either an
         * order-q or an order-2q group, which both is OK
         */
        if (!FUNC8(t1, 12))
            goto err;
        if (!FUNC8(t2, 11))
            goto err;
        g = generator;
    }

    if (!FUNC6(ret->p, prime_len, 1, t1, t2, cb))
        goto err;
    if (!FUNC5(cb, 3, 0))
        goto err;
    if (!FUNC8(ret->g, g))
        goto err;
    ret->dirty_cnt++;
    ok = 1;
 err:
    if (ok == -1) {
        FUNC9(DH_F_DH_BUILTIN_GENPARAMS, ERR_R_BN_LIB);
        ok = 0;
    }

    FUNC0(ctx);
    FUNC1(ctx);
    return ok;
}