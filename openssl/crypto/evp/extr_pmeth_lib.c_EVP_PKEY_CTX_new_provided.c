
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_CTX ;
typedef int EVP_PKEY_CTX ;


 int * int_ctx_new (int *,int *,int *,char const*,char const*,int) ;

EVP_PKEY_CTX *EVP_PKEY_CTX_new_provided(OPENSSL_CTX *libctx,
                                        const char *name,
                                        const char *propquery)
{
    return int_ctx_new(libctx, ((void*)0), ((void*)0), name, propquery, -1);
}
