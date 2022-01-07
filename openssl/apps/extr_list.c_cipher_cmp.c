
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int EVP_CIPHER_number (int const* const) ;
 int EVP_CIPHER_provider (int const* const) ;
 int OSSL_PROVIDER_name (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int cipher_cmp(const EVP_CIPHER * const *a,
                      const EVP_CIPHER * const *b)
{
    int ret = EVP_CIPHER_number(*a) - EVP_CIPHER_number(*b);

    if (ret == 0)
        ret = strcmp(OSSL_PROVIDER_name(EVP_CIPHER_provider(*a)),
                     OSSL_PROVIDER_name(EVP_CIPHER_provider(*b)));

    return ret;
}
