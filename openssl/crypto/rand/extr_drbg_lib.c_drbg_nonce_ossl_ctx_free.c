
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rand_nonce_lock; } ;
typedef TYPE_1__ DRBG_NONCE_GLOBAL ;


 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void drbg_nonce_ossl_ctx_free(void *vdngbl)
{
    DRBG_NONCE_GLOBAL *dngbl = vdngbl;

    if (dngbl == ((void*)0))
        return;

    CRYPTO_THREAD_lock_free(dngbl->rand_nonce_lock);

    OPENSSL_free(dngbl);
}
