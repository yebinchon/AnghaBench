#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ keygen_info_count; } ;
struct TYPE_16__ {int /*<<< orphan*/  ktmp; int /*<<< orphan*/  md; } ;
struct TYPE_17__ {int type; TYPE_1__ raw_data; TYPE_12__* ctx; } ;
struct TYPE_15__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ MAC_PKEY_CTX ;
typedef  TYPE_3__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_PKEY_MAC_COPY ; 
 TYPE_12__* FUNC2 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  MAC_TYPE_MAC 129 
#define  MAC_TYPE_RAW 128 
 TYPE_2__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC10(EVP_PKEY_CTX *dst, const EVP_PKEY_CTX *src)
{
    MAC_PKEY_CTX *sctx, *dctx;

    sctx = FUNC5(src);
    if (sctx->ctx->data == NULL)
        return 0;

    dctx = FUNC8(sizeof(*dctx));
    if (dctx == NULL) {
        FUNC7(EVP_F_PKEY_MAC_COPY, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    FUNC6(dst, dctx);
    dst->keygen_info_count = 0;

    dctx->ctx = FUNC2(sctx->ctx);
    if (dctx->ctx == NULL)
        goto err;

    /*
     * Normally, nothing special would be done with the MAC method.  In
     * this particular case, though, the MAC method was fetched internally
     * by pkey_mac_init() above or by EVP_PKEY_new_CMAC_key() and passed
     * via the EVP_MAC_CTX, so it is effectively like every new EVP_MAC_CTX
     * fetches the MAC method anew in this case.  Therefore, its reference
     * count must be adjusted here.
     */
    if (!FUNC4(FUNC3(dctx->ctx)))
        goto err;

    dctx->type = sctx->type;

    switch (dctx->type) {
    case MAC_TYPE_RAW:
        dctx->raw_data.md = sctx->raw_data.md;
        if (FUNC1(&sctx->raw_data.ktmp) != NULL &&
            !FUNC0(&dctx->raw_data.ktmp, &sctx->raw_data.ktmp))
            goto err;
        break;
    case MAC_TYPE_MAC:
        /* Nothing more to do */
        break;
    default:
        /* This should be dead code */
        return 0;
    }
    return 1;
 err:
    FUNC9(dst);
    return 0;
}