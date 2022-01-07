
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_KDF_CTX ;
typedef int EVP_KDF ;


 int * EVP_KDF_CTX_new (int *) ;
 int * EVP_KDF_fetch (int *,char const*,int *) ;
 int EVP_KDF_free (int *) ;

__attribute__((used)) static EVP_KDF_CTX *get_kdfbyname(const char *name)
{
    EVP_KDF *kdf = EVP_KDF_fetch(((void*)0), name, ((void*)0));
    EVP_KDF_CTX *kctx = EVP_KDF_CTX_new(kdf);

    EVP_KDF_free(kdf);
    return kctx;
}
