#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_5__* pctx; TYPE_1__* digest; } ;
struct TYPE_10__ {int /*<<< orphan*/ * sigprovctx; TYPE_2__* signature; } ;
struct TYPE_11__ {TYPE_3__ sig; } ;
struct TYPE_12__ {scalar_t__ operation; TYPE_4__ op; } ;
struct TYPE_9__ {int /*<<< orphan*/  const* (* gettable_ctx_md_params ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  const* (* gettable_ctx_params ) () ;} ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_5__ EVP_PKEY_CTX ;
typedef  TYPE_6__ EVP_MD_CTX ;

/* Variables and functions */
 scalar_t__ EVP_PKEY_OP_SIGNCTX ; 
 scalar_t__ EVP_PKEY_OP_VERIFYCTX ; 
 int /*<<< orphan*/  const* FUNC0 () ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 

const OSSL_PARAM *FUNC2(EVP_MD_CTX *ctx)
{
    EVP_PKEY_CTX *pctx;

    if (ctx != NULL
            && ctx->digest != NULL
            && ctx->digest->gettable_ctx_params != NULL)
        return ctx->digest->gettable_ctx_params();

    pctx = ctx->pctx;
    if (pctx != NULL
            && (pctx->operation == EVP_PKEY_OP_VERIFYCTX
                || pctx->operation == EVP_PKEY_OP_SIGNCTX)
            && pctx->op.sig.sigprovctx != NULL
            && pctx->op.sig.signature->gettable_ctx_md_params != NULL)
        return pctx->op.sig.signature->gettable_ctx_md_params(
                    pctx->op.sig.sigprovctx);

    return NULL;
}