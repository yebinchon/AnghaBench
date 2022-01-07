
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_KDF ;


 int evp_kdf_free (int *) ;

void EVP_KDF_free(EVP_KDF *kdf)
{
    evp_kdf_free(kdf);
}
