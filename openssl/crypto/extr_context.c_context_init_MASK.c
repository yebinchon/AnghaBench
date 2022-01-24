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
struct TYPE_7__ {int* dyn_indexes; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * oncelock; int /*<<< orphan*/  data; int /*<<< orphan*/ ** index_locks; } ;
typedef  TYPE_1__ OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_OPENSSL_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 () ; 
 size_t OPENSSL_CTX_MAX_INDEXES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(OPENSSL_CTX *ctx)
{
    size_t i;
    int exdata_done = 0;

    ctx->lock = FUNC1();
    if (ctx->lock == NULL)
        return 0;

    ctx->oncelock = FUNC1();
    if (ctx->oncelock == NULL)
        goto err;

    for (i = 0; i < OPENSSL_CTX_MAX_INDEXES; i++) {
        ctx->index_locks[i] = FUNC1();
        ctx->dyn_indexes[i] = -1;
        if (ctx->index_locks[i] == NULL)
            goto err;
    }

    /* OPENSSL_CTX is built on top of ex_data so we initialise that directly */
    if (!FUNC4(ctx))
        goto err;
    exdata_done = 1;

    if (!FUNC3(ctx, CRYPTO_EX_INDEX_OPENSSL_CTX, NULL,
                               &ctx->data)) {
        FUNC2(ctx);
        goto err;
    }

    /* Everything depends on properties, so we also pre-initialise that */
    if (!FUNC5(ctx))
        goto err;

    return 1;
 err:
    if (exdata_done)
        FUNC2(ctx);
    FUNC0(ctx->oncelock);
    FUNC0(ctx->lock);
    ctx->lock = NULL;
    return 0;
}