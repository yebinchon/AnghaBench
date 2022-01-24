#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * e; int /*<<< orphan*/  _method_mod_n; TYPE_1__* meth; int /*<<< orphan*/  n; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  d; } ;
struct TYPE_4__ {int /*<<< orphan*/  bn_mod_exp; } ;
typedef  TYPE_2__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BN_BLINDING ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  RSA_F_RSA_SETUP_BLINDING ; 
 int /*<<< orphan*/  RSA_R_NO_PUBLIC_EXPONENT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BN_BLINDING *FUNC12(RSA *rsa, BN_CTX *in_ctx)
{
    BIGNUM *e;
    BN_CTX *ctx;
    BN_BLINDING *ret = NULL;

    if (in_ctx == NULL) {
        if ((ctx = FUNC5()) == NULL)
            return 0;
    } else {
        ctx = in_ctx;
    }

    FUNC6(ctx);
    e = FUNC4(ctx);
    if (e == NULL) {
        FUNC10(RSA_F_RSA_SETUP_BLINDING, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (rsa->e == NULL) {
        e = FUNC11(rsa->d, rsa->p, rsa->q, ctx);
        if (e == NULL) {
            FUNC10(RSA_F_RSA_SETUP_BLINDING, RSA_R_NO_PUBLIC_EXPONENT);
            goto err;
        }
    } else {
        e = rsa->e;
    }

    {
        BIGNUM *n = FUNC8();

        if (n == NULL) {
            FUNC10(RSA_F_RSA_SETUP_BLINDING, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        FUNC9(n, rsa->n, BN_FLG_CONSTTIME);

        ret = FUNC0(NULL, e, n, ctx, rsa->meth->bn_mod_exp,
                                       rsa->_method_mod_n);
        /* We MUST free n before any further use of rsa->n */
        FUNC7(n);
    }
    if (ret == NULL) {
        FUNC10(RSA_F_RSA_SETUP_BLINDING, ERR_R_BN_LIB);
        goto err;
    }

    FUNC1(ret);

 err:
    FUNC2(ctx);
    if (ctx != in_ctx)
        FUNC3(ctx);
    if (e != rsa->e)
        FUNC7(e);

    return ret;
}