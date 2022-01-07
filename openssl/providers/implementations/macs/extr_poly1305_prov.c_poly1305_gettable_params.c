
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* known_gettable_params ;

__attribute__((used)) static const OSSL_PARAM *poly1305_gettable_params(void)
{
    return known_gettable_params;
}
