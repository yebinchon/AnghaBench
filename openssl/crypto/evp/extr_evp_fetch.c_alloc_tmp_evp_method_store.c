
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 void* ossl_method_store_new (int *) ;

__attribute__((used)) static void *alloc_tmp_evp_method_store(OPENSSL_CTX *ctx)
{
    return ossl_method_store_new(ctx);
}
