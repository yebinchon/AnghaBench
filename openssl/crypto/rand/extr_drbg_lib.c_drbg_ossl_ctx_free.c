
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int public_drbg; int private_drbg; int master_drbg; } ;
typedef TYPE_1__ DRBG_GLOBAL ;


 int CRYPTO_THREAD_cleanup_local (int *) ;
 int OPENSSL_free (TYPE_1__*) ;
 int RAND_DRBG_free (int ) ;

__attribute__((used)) static void drbg_ossl_ctx_free(void *vdgbl)
{
    DRBG_GLOBAL *dgbl = vdgbl;

    if (dgbl == ((void*)0))
        return;

    RAND_DRBG_free(dgbl->master_drbg);
    CRYPTO_THREAD_cleanup_local(&dgbl->private_drbg);
    CRYPTO_THREAD_cleanup_local(&dgbl->public_drbg);

    OPENSSL_free(dgbl);
}
