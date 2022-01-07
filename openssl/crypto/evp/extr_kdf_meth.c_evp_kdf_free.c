
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int prov; int refcnt; } ;
typedef TYPE_1__ EVP_KDF ;


 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int ossl_provider_free (int ) ;

__attribute__((used)) static void evp_kdf_free(void *vkdf){
    EVP_KDF *kdf = (EVP_KDF *)vkdf;
    int ref = 0;

    if (kdf != ((void*)0)) {
        CRYPTO_DOWN_REF(&kdf->refcnt, &ref, kdf->lock);
        if (ref <= 0) {
            ossl_provider_free(kdf->prov);
            CRYPTO_THREAD_lock_free(kdf->lock);
            OPENSSL_free(kdf);
        }
    }
}
