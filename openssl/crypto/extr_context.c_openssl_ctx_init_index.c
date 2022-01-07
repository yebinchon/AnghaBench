
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* dyn_indexes; } ;
typedef int OPENSSL_CTX_METHOD ;
typedef TYPE_1__ OPENSSL_CTX ;


 int CRYPTO_EX_INDEX_OPENSSL_CTX ;
 int crypto_get_ex_new_index_ex (TYPE_1__*,int ,int ,void*,int ,int *,int ) ;
 int openssl_ctx_generic_free ;
 int openssl_ctx_generic_new ;
 TYPE_1__* openssl_ctx_get_concrete (TYPE_1__*) ;

__attribute__((used)) static int openssl_ctx_init_index(OPENSSL_CTX *ctx, int static_index,
                                  const OPENSSL_CTX_METHOD *meth)
{
    int idx;

    ctx = openssl_ctx_get_concrete(ctx);
    if (ctx == ((void*)0))
        return 0;

    idx = crypto_get_ex_new_index_ex(ctx, CRYPTO_EX_INDEX_OPENSSL_CTX, 0,
                                     (void *)meth,
                                     openssl_ctx_generic_new,
                                     ((void*)0), openssl_ctx_generic_free);
    if (idx < 0)
        return 0;

    ctx->dyn_indexes[static_index] = idx;
    return 1;
}
