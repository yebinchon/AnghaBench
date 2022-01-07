
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_ITEM ;


 int const* legacy_param_types ;

__attribute__((used)) static const OSSL_ITEM *legacy_gettable_params(const OSSL_PROVIDER *prov)
{
    return legacy_param_types;
}
