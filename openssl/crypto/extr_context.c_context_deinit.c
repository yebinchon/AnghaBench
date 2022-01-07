
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct openssl_ctx_onfree_list_st {struct openssl_ctx_onfree_list_st* next; int (* fn ) (TYPE_1__*) ;} ;
struct TYPE_6__ {int * lock; int * oncelock; int ** index_locks; int data; struct openssl_ctx_onfree_list_st* onfreelist; } ;
typedef TYPE_1__ OPENSSL_CTX ;


 int CRYPTO_EX_INDEX_OPENSSL_CTX ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int CRYPTO_free_ex_data (int ,int *,int *) ;
 int OPENSSL_CTX_MAX_INDEXES ;
 int OPENSSL_free (struct openssl_ctx_onfree_list_st*) ;
 int crypto_cleanup_all_ex_data_int (TYPE_1__*) ;
 int ossl_ctx_thread_stop (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int context_deinit(OPENSSL_CTX *ctx)
{
    struct openssl_ctx_onfree_list_st *tmp, *onfree;
    int i;

    if (ctx == ((void*)0))
        return 1;

    ossl_ctx_thread_stop(ctx);

    onfree = ctx->onfreelist;
    while (onfree != ((void*)0)) {
        onfree->fn(ctx);
        tmp = onfree;
        onfree = onfree->next;
        OPENSSL_free(tmp);
    }
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_OPENSSL_CTX, ((void*)0), &ctx->data);
    crypto_cleanup_all_ex_data_int(ctx);
    for (i = 0; i < OPENSSL_CTX_MAX_INDEXES; i++)
        CRYPTO_THREAD_lock_free(ctx->index_locks[i]);

    CRYPTO_THREAD_lock_free(ctx->oncelock);
    CRYPTO_THREAD_lock_free(ctx->lock);
    ctx->lock = ((void*)0);
    return 1;
}
