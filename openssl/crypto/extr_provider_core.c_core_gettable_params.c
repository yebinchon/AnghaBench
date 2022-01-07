
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OSSL_PARAM ;


 int const* param_types ;

__attribute__((used)) static const OSSL_PARAM *core_gettable_params(const OSSL_PROVIDER *prov)
{
    return param_types;
}
