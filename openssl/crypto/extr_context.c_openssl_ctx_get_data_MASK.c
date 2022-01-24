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
struct TYPE_6__ {int* dyn_indexes; int /*<<< orphan*/ * index_locks; int /*<<< orphan*/  data; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  OPENSSL_CTX_METHOD ;
typedef  TYPE_1__ OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_OPENSSL_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/  const*) ; 

void *FUNC7(OPENSSL_CTX *ctx, int index,
                           const OPENSSL_CTX_METHOD *meth)
{
    void *data = NULL;
    int dynidx;

    ctx = FUNC5(ctx);
    if (ctx == NULL)
        return NULL;

    FUNC0(ctx->lock);
    dynidx = ctx->dyn_indexes[index];
    FUNC1(ctx->lock);

    if (dynidx != -1) {
        FUNC0(ctx->index_locks[index]);
        data = FUNC4(&ctx->data, dynidx);
        FUNC1(ctx->index_locks[index]);
        return data;
    }

    FUNC2(ctx->index_locks[index]);
    FUNC2(ctx->lock);

    dynidx = ctx->dyn_indexes[index];
    if (dynidx != -1) {
        FUNC1(ctx->lock);
        data = FUNC4(&ctx->data, dynidx);
        FUNC1(ctx->index_locks[index]);
        return data;
    }

    if (!FUNC6(ctx, index, meth)) {
        FUNC1(ctx->lock);
        FUNC1(ctx->index_locks[index]);
        return NULL;
    }

    FUNC1(ctx->lock);

    /* The alloc call ensures there's a value there */
    if (FUNC3(CRYPTO_EX_INDEX_OPENSSL_CTX, NULL,
                             &ctx->data, ctx->dyn_indexes[index]))
        data = FUNC4(&ctx->data, ctx->dyn_indexes[index]);

    FUNC1(ctx->index_locks[index]);

    return data;
}