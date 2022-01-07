
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;


 void* ossl_method_store_new (int *) ;

__attribute__((used)) static void *evp_method_store_new(OPENSSL_CTX *ctx)
{
    return ossl_method_store_new(ctx);
}
