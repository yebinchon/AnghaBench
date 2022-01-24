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
struct TYPE_5__ {int /*<<< orphan*/ * recipNonce; int /*<<< orphan*/ * transactionID; int /*<<< orphan*/ * senderNonce; } ;
struct TYPE_4__ {scalar_t__ expected; TYPE_2__* cmp_ctx; int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ CMP_HDR_TEST_FIXTURE ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CMP_PVNO ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(CMP_HDR_TEST_FIXTURE *fixture)
{
    ASN1_OCTET_STRING *header_nonce = NULL;
    ASN1_OCTET_STRING *ctx_nonce = NULL;
    int res = 0;

    if (!FUNC3(fixture->expected,
                     FUNC8(fixture->cmp_ctx, fixture->hdr)))
        goto err;
    if (fixture->expected != 0) {
        if (!FUNC3(FUNC7(fixture->hdr), OSSL_CMP_PVNO)
                || !FUNC5(0 == FUNC0(
                        FUNC6(fixture->hdr),
                        fixture->cmp_ctx->senderNonce))
                || !FUNC5(0 ==  FUNC0(
                            FUNC2(fixture->hdr),
                            fixture->cmp_ctx->transactionID)))
            goto err;
        header_nonce = FUNC1(fixture->hdr);
        ctx_nonce = fixture->cmp_ctx->recipNonce;
        if (ctx_nonce != NULL
                && (!FUNC4(header_nonce)
                || !FUNC3(0, FUNC0(header_nonce,
                                                         ctx_nonce))))
            goto err;
    }

    res = 1;

 err:
    return res;
}