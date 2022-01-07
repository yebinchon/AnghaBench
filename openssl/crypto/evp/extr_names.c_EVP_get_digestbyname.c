
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int const* evp_get_digestbyname_ex (int *,char const*) ;

const EVP_MD *EVP_get_digestbyname(const char *name)
{
    return evp_get_digestbyname_ex(((void*)0), name);
}
