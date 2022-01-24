#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_17__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_10__* signature; int /*<<< orphan*/ * sigprovctx; } ;
struct TYPE_21__ {TYPE_17__* exchange; int /*<<< orphan*/ * exchprovctx; } ;
struct TYPE_23__ {TYPE_2__ sig; TYPE_1__ kex; } ;
struct TYPE_25__ {TYPE_4__* pmeth; int /*<<< orphan*/ * peerkey; scalar_t__ engine; TYPE_3__ op; int /*<<< orphan*/  propquery; int /*<<< orphan*/  algorithm; int /*<<< orphan*/  libctx; int /*<<< orphan*/  operation; int /*<<< orphan*/ * pkey; } ;
struct TYPE_24__ {scalar_t__ (* copy ) (TYPE_5__*,TYPE_5__ const*) ;} ;
struct TYPE_20__ {int /*<<< orphan*/ * (* dupctx ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_19__ {int /*<<< orphan*/ * (* dupctx ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_5__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERR_R_ENGINE_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_EVP_PKEY_CTX_DUP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_17__*) ; 
 scalar_t__ FUNC3 (TYPE_5__ const*) ; 
 scalar_t__ FUNC4 (TYPE_5__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 TYPE_5__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_5__*,TYPE_5__ const*) ; 

EVP_PKEY_CTX *FUNC16(const EVP_PKEY_CTX *pctx)
{
    EVP_PKEY_CTX *rctx;

    if (((pctx->pmeth == NULL) || (pctx->pmeth->copy == NULL))
            && ((FUNC3(pctx)
                 && pctx->op.kex.exchprovctx == NULL)
                || (FUNC4(pctx)
                    && pctx->op.sig.sigprovctx == NULL)))
        return NULL;
#ifndef OPENSSL_NO_ENGINE
    /* Make sure it's safe to copy a pkey context using an ENGINE */
    if (pctx->engine && !FUNC0(pctx->engine)) {
        FUNC9(EVP_F_EVP_PKEY_CTX_DUP, ERR_R_ENGINE_LIB);
        return 0;
    }
#endif
    rctx = FUNC11(sizeof(*rctx));
    if (rctx == NULL) {
        FUNC9(EVP_F_EVP_PKEY_CTX_DUP, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (pctx->pkey != NULL)
        FUNC6(pctx->pkey);
    rctx->pkey = pctx->pkey;
    rctx->operation = pctx->operation;
    rctx->libctx = pctx->libctx;
    rctx->algorithm = pctx->algorithm;
    rctx->propquery = pctx->propquery;

    if (FUNC3(pctx)) {
        if (pctx->op.kex.exchange != NULL) {
            rctx->op.kex.exchange = pctx->op.kex.exchange;
            if (!FUNC2(rctx->op.kex.exchange)) {
                FUNC10(rctx);
                return NULL;
            }
        }
        if (pctx->op.kex.exchprovctx != NULL) {
            if (!FUNC12(pctx->op.kex.exchange != NULL))
                return NULL;
            rctx->op.kex.exchprovctx
                = pctx->op.kex.exchange->dupctx(pctx->op.kex.exchprovctx);
            if (rctx->op.kex.exchprovctx == NULL) {
                FUNC1(rctx->op.kex.exchange);
                FUNC10(rctx);
                return NULL;
            }
            return rctx;
        }
    } else if (FUNC4(pctx)) {
        if (pctx->op.sig.signature != NULL) {
            rctx->op.sig.signature = pctx->op.sig.signature;
            if (!FUNC8(rctx->op.sig.signature)) {
                FUNC10(rctx);
                return NULL;
            }
        }
        if (pctx->op.sig.sigprovctx != NULL) {
            if (!FUNC12(pctx->op.sig.signature != NULL))
                return NULL;
            rctx->op.sig.sigprovctx
                = pctx->op.sig.signature->dupctx(pctx->op.sig.sigprovctx);
            if (rctx->op.sig.sigprovctx == NULL) {
                FUNC7(rctx->op.sig.signature);
                FUNC10(rctx);
                return NULL;
            }
            return rctx;
        }
    }

    rctx->pmeth = pctx->pmeth;
#ifndef OPENSSL_NO_ENGINE
    rctx->engine = pctx->engine;
#endif

    if (pctx->peerkey)
        FUNC6(pctx->peerkey);
    rctx->peerkey = pctx->peerkey;

    if (pctx->pmeth->copy(rctx, pctx) > 0)
        return rctx;

    rctx->pmeth = NULL;
    FUNC5(rctx);
    return NULL;

}