
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;


 char const* ossl_provider_name (int const*) ;

const char *OSSL_PROVIDER_name(const OSSL_PROVIDER *prov)
{
    return ossl_provider_name(prov);
}
