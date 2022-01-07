
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmac_data_st {void* provctx; int * ctx; } ;


 int * EVP_MD_CTX_new () ;
 struct kmac_data_st* OPENSSL_zalloc (int) ;
 int kmac_free (struct kmac_data_st*) ;

__attribute__((used)) static struct kmac_data_st *kmac_new(void *provctx)
{
    struct kmac_data_st *kctx;

    if ((kctx = OPENSSL_zalloc(sizeof(*kctx))) == ((void*)0)
            || (kctx->ctx = EVP_MD_CTX_new()) == ((void*)0)) {
        kmac_free(kctx);
        return ((void*)0);
    }
    kctx->provctx = provctx;
    return kctx;
}
