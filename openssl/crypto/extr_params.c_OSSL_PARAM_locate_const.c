
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* OSSL_PARAM_locate (int *,char const*) ;

const OSSL_PARAM *OSSL_PARAM_locate_const(const OSSL_PARAM *p, const char *key)
{
    return OSSL_PARAM_locate((OSSL_PARAM *)p, key);
}
