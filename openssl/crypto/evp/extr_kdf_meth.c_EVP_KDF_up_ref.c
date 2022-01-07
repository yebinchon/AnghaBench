
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_KDF ;


 int evp_kdf_up_ref (int *) ;

int EVP_KDF_up_ref(EVP_KDF *kdf)
{
    return evp_kdf_up_ref(kdf);
}
