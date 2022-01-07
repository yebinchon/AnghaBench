
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int EVP_MD_number (int const* const) ;
 int EVP_MD_provider (int const* const) ;
 int OSSL_PROVIDER_name (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int md_cmp(const EVP_MD * const *a, const EVP_MD * const *b)
{
    int ret = EVP_MD_number(*a) - EVP_MD_number(*b);

    if (ret == 0)
        ret = strcmp(OSSL_PROVIDER_name(EVP_MD_provider(*a)),
                     OSSL_PROVIDER_name(EVP_MD_provider(*b)));

    return ret;
}
