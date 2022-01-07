
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private_drbg; int public_drbg; } ;
typedef int RAND_DRBG ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ DRBG_GLOBAL ;


 int * CRYPTO_THREAD_get_local (int *) ;
 int CRYPTO_THREAD_set_local (int *,int *) ;
 int RAND_DRBG_free (int *) ;
 TYPE_1__* drbg_get_global (int *) ;

__attribute__((used)) static void drbg_delete_thread_state(void *arg)
{
    OPENSSL_CTX *ctx = arg;
    DRBG_GLOBAL *dgbl = drbg_get_global(ctx);
    RAND_DRBG *drbg;

    if (dgbl == ((void*)0))
        return;
    drbg = CRYPTO_THREAD_get_local(&dgbl->public_drbg);
    CRYPTO_THREAD_set_local(&dgbl->public_drbg, ((void*)0));
    RAND_DRBG_free(drbg);

    drbg = CRYPTO_THREAD_get_local(&dgbl->private_drbg);
    CRYPTO_THREAD_set_local(&dgbl->private_drbg, ((void*)0));
    RAND_DRBG_free(drbg);
}
