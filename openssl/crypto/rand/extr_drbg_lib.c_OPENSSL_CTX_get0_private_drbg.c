
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private_drbg; int master_drbg; } ;
typedef int RAND_DRBG ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ DRBG_GLOBAL ;


 int * CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int RAND_DRBG_TYPE_PRIVATE ;
 int drbg_delete_thread_state ;
 TYPE_1__* drbg_get_global (int *) ;
 int * drbg_setup (int *,int ,int ) ;
 int * openssl_ctx_get_concrete (int *) ;
 int ossl_init_thread_start (int *,int *,int ) ;

RAND_DRBG *OPENSSL_CTX_get0_private_drbg(OPENSSL_CTX *ctx)
{
    DRBG_GLOBAL *dgbl = drbg_get_global(ctx);
    RAND_DRBG *drbg;

    if (dgbl == ((void*)0))
        return ((void*)0);

    drbg = CRYPTO_THREAD_get_local(&dgbl->private_drbg);
    if (drbg == ((void*)0)) {
        ctx = openssl_ctx_get_concrete(ctx);
        if (!ossl_init_thread_start(((void*)0), ctx, drbg_delete_thread_state))
            return ((void*)0);
        drbg = drbg_setup(ctx, dgbl->master_drbg, RAND_DRBG_TYPE_PRIVATE);
        CRYPTO_THREAD_set_local(&dgbl->private_drbg, drbg);
    }
    return drbg;
}
