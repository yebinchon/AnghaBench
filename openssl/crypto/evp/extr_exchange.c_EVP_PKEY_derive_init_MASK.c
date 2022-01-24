#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int (* init ) (int /*<<< orphan*/ *,void*) ;int /*<<< orphan*/  prov; int /*<<< orphan*/ * (* newctx ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {int /*<<< orphan*/ * exchprovctx; TYPE_5__* exchange; } ;
struct TYPE_14__ {TYPE_1__ kex; } ;
struct TYPE_16__ {void* operation; TYPE_3__* pmeth; TYPE_2__ op; int /*<<< orphan*/ * keymgmt; int /*<<< orphan*/ * pkey; int /*<<< orphan*/  propquery; int /*<<< orphan*/  libctx; int /*<<< orphan*/ * algorithm; int /*<<< orphan*/ * engine; } ;
struct TYPE_15__ {int (* derive_init ) (TYPE_4__*) ;int /*<<< orphan*/ * derive; } ;
typedef  TYPE_4__ EVP_PKEY_CTX ;
typedef  TYPE_5__ EVP_KEYEXCH ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 void* EVP_PKEY_OP_DERIVE ; 
 void* EVP_PKEY_OP_UNDEFINED ; 
 int /*<<< orphan*/  EVP_R_INITIALIZATION_ERROR ; 
 int /*<<< orphan*/  EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int FUNC12 (TYPE_4__*) ; 

int FUNC13(EVP_PKEY_CTX *ctx)
{
    int ret;
    void *provkey = NULL;
    EVP_KEYEXCH *exchange = NULL;

    if (ctx == NULL) {
        FUNC5(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    FUNC8(ctx);
    ctx->operation = EVP_PKEY_OP_DERIVE;

    if (ctx->engine != NULL || ctx->algorithm == NULL)
        goto legacy;

    /*
     * Because we cleared out old ops, we shouldn't need to worry about
     * checking if exchange is already there.  Keymgmt is a different
     * matter, as it isn't tied to a specific EVP_PKEY op.
     */
    exchange = FUNC0(ctx->libctx, ctx->algorithm, ctx->propquery);
    if (exchange != NULL && ctx->keymgmt == NULL) {
        int name_id = FUNC2(exchange);

        ctx->keymgmt =
            FUNC7(ctx->libctx, name_id, ctx->propquery);
    }

    if (ctx->keymgmt == NULL
        || exchange == NULL
        || (FUNC4(ctx->keymgmt)
            != FUNC3(exchange))) {
        /*
         * We don't have the full support we need with provided methods,
         * let's go see if legacy does.  Also, we don't need to free
         * ctx->keymgmt here, as it's not necessarily tied to this
         * operation.  It will be freed by EVP_PKEY_CTX_free().
         */
        FUNC1(exchange);
        goto legacy;
    }


    ctx->op.kex.exchange = exchange;

    if (ctx->pkey != NULL) {
        provkey = FUNC6(ctx->pkey, ctx->keymgmt, 0);
        if (provkey == NULL) {
            FUNC5(0, EVP_R_INITIALIZATION_ERROR);
            goto err;
        }
    }
    ctx->op.kex.exchprovctx = exchange->newctx(FUNC9(exchange->prov));
    if (ctx->op.kex.exchprovctx == NULL) {
        /* The provider key can stay in the cache */
        FUNC5(0, EVP_R_INITIALIZATION_ERROR);
        goto err;
    }
    ret = exchange->init(ctx->op.kex.exchprovctx, provkey);

    return ret ? 1 : 0;
 err:
    ctx->operation = EVP_PKEY_OP_UNDEFINED;
    return 0;

 legacy:
    if (ctx == NULL || ctx->pmeth == NULL || ctx->pmeth->derive == NULL) {
        FUNC5(0, EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    }

    if (ctx->pmeth->derive_init == NULL)
        return 1;
    ret = ctx->pmeth->derive_init(ctx);
    if (ret <= 0)
        ctx->operation = EVP_PKEY_OP_UNDEFINED;
    return ret;
}