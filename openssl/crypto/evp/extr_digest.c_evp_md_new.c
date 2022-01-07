
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refcnt; int * lock; } ;
typedef TYPE_1__ EVP_MD ;


 int * CRYPTO_THREAD_lock_new () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

EVP_MD *evp_md_new(void)
{
    EVP_MD *md = OPENSSL_zalloc(sizeof(*md));

    if (md != ((void*)0)) {
        md->lock = CRYPTO_THREAD_lock_new();
        if (md->lock == ((void*)0)) {
            OPENSSL_free(md);
            return ((void*)0);
        }
        md->refcnt = 1;
    }
    return md;
}
