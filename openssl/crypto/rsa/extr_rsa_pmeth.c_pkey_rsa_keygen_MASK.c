#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* pmeth; scalar_t__ pkey_gencb; TYPE_2__* data; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pub_exp; int /*<<< orphan*/  primes; int /*<<< orphan*/  nbits; } ;
struct TYPE_7__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_2__ RSA_PKEY_CTX ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_3__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BN_GENCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_F4 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC10(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    RSA *rsa = NULL;
    RSA_PKEY_CTX *rctx = ctx->data;
    BN_GENCB *pcb;
    int ret;

    if (rctx->pub_exp == NULL) {
        rctx->pub_exp = FUNC2();
        if (rctx->pub_exp == NULL || !FUNC3(rctx->pub_exp, RSA_F4))
            return 0;
    }
    rsa = FUNC7();
    if (rsa == NULL)
        return 0;
    if (ctx->pkey_gencb) {
        pcb = FUNC1();
        if (pcb == NULL) {
            FUNC5(rsa);
            return 0;
        }
        FUNC8(pcb, ctx);
    } else {
        pcb = NULL;
    }
    ret = FUNC6(rsa, rctx->nbits, rctx->primes,
                                       rctx->pub_exp, pcb);
    FUNC0(pcb);
    if (ret > 0 && !FUNC9(rsa, ctx)) {
        FUNC5(rsa);
        return 0;
    }
    if (ret > 0)
        FUNC4(pkey, ctx->pmeth->pkey_id, rsa);
    else
        FUNC5(rsa);
    return ret;
}