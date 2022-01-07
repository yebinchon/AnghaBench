
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refcnt; int * lock; } ;
typedef TYPE_1__ EVP_CIPHER ;


 int * CRYPTO_THREAD_lock_new () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

EVP_CIPHER *evp_cipher_new(void)
{
    EVP_CIPHER *cipher = OPENSSL_zalloc(sizeof(EVP_CIPHER));

    if (cipher != ((void*)0)) {
        cipher->lock = CRYPTO_THREAD_lock_new();
        if (cipher->lock == ((void*)0)) {
            OPENSSL_free(cipher);
            return ((void*)0);
        }
        cipher->refcnt = 1;
    }
    return cipher;
}
