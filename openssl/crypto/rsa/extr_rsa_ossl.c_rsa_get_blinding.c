
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int * mt_blinding; int * blinding; } ;
typedef TYPE_1__ RSA ;
typedef int BN_CTX ;
typedef int BN_BLINDING ;


 scalar_t__ BN_BLINDING_is_current_thread (int *) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 void* RSA_setup_blinding (TYPE_1__*,int *) ;

__attribute__((used)) static BN_BLINDING *rsa_get_blinding(RSA *rsa, int *local, BN_CTX *ctx)
{
    BN_BLINDING *ret;

    CRYPTO_THREAD_write_lock(rsa->lock);

    if (rsa->blinding == ((void*)0)) {
        rsa->blinding = RSA_setup_blinding(rsa, ctx);
    }

    ret = rsa->blinding;
    if (ret == ((void*)0))
        goto err;

    if (BN_BLINDING_is_current_thread(ret)) {


        *local = 1;
    } else {







        *local = 0;

        if (rsa->mt_blinding == ((void*)0)) {
            rsa->mt_blinding = RSA_setup_blinding(rsa, ctx);
        }
        ret = rsa->mt_blinding;
    }

 err:
    CRYPTO_THREAD_unlock(rsa->lock);
    return ret;
}
