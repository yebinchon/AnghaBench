
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const* evp_get_cipherbyname_ex (int *,char const*) ;

const EVP_CIPHER *EVP_get_cipherbyname(const char *name)
{
    return evp_get_cipherbyname_ex(((void*)0), name);
}
