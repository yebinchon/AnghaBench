
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* dyn_indexes; int * lock; int * oncelock; int data; int ** index_locks; } ;
typedef TYPE_1__ OPENSSL_CTX ;


 int CRYPTO_EX_INDEX_OPENSSL_CTX ;
 int CRYPTO_THREAD_lock_free (int *) ;
 void* CRYPTO_THREAD_lock_new () ;
 size_t OPENSSL_CTX_MAX_INDEXES ;
 int crypto_cleanup_all_ex_data_int (TYPE_1__*) ;
 int crypto_new_ex_data_ex (TYPE_1__*,int ,int *,int *) ;
 int do_ex_data_init (TYPE_1__*) ;
 int ossl_property_parse_init (TYPE_1__*) ;

__attribute__((used)) static int context_init(OPENSSL_CTX *ctx)
{
    size_t i;
    int exdata_done = 0;

    ctx->lock = CRYPTO_THREAD_lock_new();
    if (ctx->lock == ((void*)0))
        return 0;

    ctx->oncelock = CRYPTO_THREAD_lock_new();
    if (ctx->oncelock == ((void*)0))
        goto err;

    for (i = 0; i < OPENSSL_CTX_MAX_INDEXES; i++) {
        ctx->index_locks[i] = CRYPTO_THREAD_lock_new();
        ctx->dyn_indexes[i] = -1;
        if (ctx->index_locks[i] == ((void*)0))
            goto err;
    }


    if (!do_ex_data_init(ctx))
        goto err;
    exdata_done = 1;

    if (!crypto_new_ex_data_ex(ctx, CRYPTO_EX_INDEX_OPENSSL_CTX, ((void*)0),
                               &ctx->data)) {
        crypto_cleanup_all_ex_data_int(ctx);
        goto err;
    }


    if (!ossl_property_parse_init(ctx))
        goto err;

    return 1;
 err:
    if (exdata_done)
        crypto_cleanup_all_ex_data_int(ctx);
    CRYPTO_THREAD_lock_free(ctx->oncelock);
    CRYPTO_THREAD_lock_free(ctx->lock);
    ctx->lock = ((void*)0);
    return 0;
}
