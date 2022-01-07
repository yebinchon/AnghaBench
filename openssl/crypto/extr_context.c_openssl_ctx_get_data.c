
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* dyn_indexes; int * index_locks; int data; int lock; } ;
typedef int OPENSSL_CTX_METHOD ;
typedef TYPE_1__ OPENSSL_CTX ;


 int CRYPTO_EX_INDEX_OPENSSL_CTX ;
 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 scalar_t__ CRYPTO_alloc_ex_data (int ,int *,int *,int) ;
 void* CRYPTO_get_ex_data (int *,int) ;
 TYPE_1__* openssl_ctx_get_concrete (TYPE_1__*) ;
 int openssl_ctx_init_index (TYPE_1__*,int,int const*) ;

void *openssl_ctx_get_data(OPENSSL_CTX *ctx, int index,
                           const OPENSSL_CTX_METHOD *meth)
{
    void *data = ((void*)0);
    int dynidx;

    ctx = openssl_ctx_get_concrete(ctx);
    if (ctx == ((void*)0))
        return ((void*)0);

    CRYPTO_THREAD_read_lock(ctx->lock);
    dynidx = ctx->dyn_indexes[index];
    CRYPTO_THREAD_unlock(ctx->lock);

    if (dynidx != -1) {
        CRYPTO_THREAD_read_lock(ctx->index_locks[index]);
        data = CRYPTO_get_ex_data(&ctx->data, dynidx);
        CRYPTO_THREAD_unlock(ctx->index_locks[index]);
        return data;
    }

    CRYPTO_THREAD_write_lock(ctx->index_locks[index]);
    CRYPTO_THREAD_write_lock(ctx->lock);

    dynidx = ctx->dyn_indexes[index];
    if (dynidx != -1) {
        CRYPTO_THREAD_unlock(ctx->lock);
        data = CRYPTO_get_ex_data(&ctx->data, dynidx);
        CRYPTO_THREAD_unlock(ctx->index_locks[index]);
        return data;
    }

    if (!openssl_ctx_init_index(ctx, index, meth)) {
        CRYPTO_THREAD_unlock(ctx->lock);
        CRYPTO_THREAD_unlock(ctx->index_locks[index]);
        return ((void*)0);
    }

    CRYPTO_THREAD_unlock(ctx->lock);


    if (CRYPTO_alloc_ex_data(CRYPTO_EX_INDEX_OPENSSL_CTX, ((void*)0),
                             &ctx->data, ctx->dyn_indexes[index]))
        data = CRYPTO_get_ex_data(&ctx->data, ctx->dyn_indexes[index]);

    CRYPTO_THREAD_unlock(ctx->index_locks[index]);

    return data;
}
