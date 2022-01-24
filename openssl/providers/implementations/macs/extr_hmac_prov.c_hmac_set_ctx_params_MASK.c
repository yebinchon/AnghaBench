#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hmac_data_st {int /*<<< orphan*/  digest; int /*<<< orphan*/  ctx; int /*<<< orphan*/  provctx; } ;
struct TYPE_7__ {scalar_t__ data_type; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_FLAGS ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int*) ; 
 TYPE_1__* FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *vmacctx, const OSSL_PARAM params[])
{
    struct hmac_data_st *macctx = vmacctx;
    OPENSSL_CTX *ctx = FUNC4(macctx->provctx);
    const OSSL_PARAM *p;

    if (!FUNC5(&macctx->digest, params, ctx))
        return 0;

    /* TODO(3.0) formalize the meaning of "flags", perhaps as other params */
    if ((p = FUNC3(params,
                                     OSSL_MAC_PARAM_FLAGS)) != NULL) {
        int flags = 0;

        if (!FUNC2(p, &flags))
            return 0;
        FUNC0(macctx->ctx, flags);
    }
    if ((p = FUNC3(params, OSSL_MAC_PARAM_KEY)) != NULL) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING)
            return 0;

        if (!FUNC1(macctx->ctx, p->data, p->data_size,
                          FUNC6(&macctx->digest),
                          NULL /* ENGINE */))
            return 0;

        FUNC7(&macctx->digest);
    }
    return 1;
}