#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* signature; } ;
struct TYPE_12__ {TYPE_5__* exchange; } ;
struct TYPE_13__ {TYPE_2__ sig; TYPE_3__ kex; } ;
struct TYPE_15__ {TYPE_4__ op; } ;
struct TYPE_14__ {int /*<<< orphan*/  const* (* settable_ctx_params ) () ;} ;
struct TYPE_10__ {int /*<<< orphan*/  const* (* settable_ctx_params ) () ;} ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_6__ EVP_PKEY_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  const* FUNC2 () ; 
 int /*<<< orphan*/  const* FUNC3 () ; 

const OSSL_PARAM *FUNC4(EVP_PKEY_CTX *ctx)
{
    if (FUNC0(ctx)
            && ctx->op.kex.exchange != NULL
            && ctx->op.kex.exchange->settable_ctx_params != NULL)
        return ctx->op.kex.exchange->settable_ctx_params();
    if (FUNC1(ctx)
            && ctx->op.sig.signature != NULL
            && ctx->op.sig.signature->settable_ctx_params != NULL)
        return ctx->op.sig.signature->settable_ctx_params();

    return NULL;
}