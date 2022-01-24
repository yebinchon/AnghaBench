#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cmac_data_st {int /*<<< orphan*/  cipher; int /*<<< orphan*/  ctx; int /*<<< orphan*/  provctx; } ;
struct TYPE_6__ {scalar_t__ data_type; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *vmacctx, const OSSL_PARAM params[])
{
    struct cmac_data_st *macctx = vmacctx;
    OPENSSL_CTX *ctx = FUNC2(macctx->provctx);
    const OSSL_PARAM *p;

    if (!FUNC5(&macctx->cipher, params, ctx))
        return 0;

    if ((p = FUNC1(params, OSSL_MAC_PARAM_KEY)) != NULL) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING)
            return 0;

        if (!FUNC0(macctx->ctx, p->data, p->data_size,
                       FUNC3(&macctx->cipher),
                       FUNC4(&macctx->cipher)))
            return 0;

        FUNC6(&macctx->cipher);
    }
    return 1;
}