
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int GCM128_CONTEXT ;


 int CRYPTO_gcm128_init (int *,void*,int ) ;
 int * OPENSSL_malloc (int) ;

GCM128_CONTEXT *CRYPTO_gcm128_new(void *key, block128_f block)
{
    GCM128_CONTEXT *ret;

    if ((ret = OPENSSL_malloc(sizeof(*ret))) != ((void*)0))
        CRYPTO_gcm128_init(ret, key, block);

    return ret;
}
