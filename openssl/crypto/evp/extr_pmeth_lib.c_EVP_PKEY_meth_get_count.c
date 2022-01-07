
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t OSSL_NELEM (int ) ;
 scalar_t__ app_pkey_methods ;
 scalar_t__ sk_EVP_PKEY_METHOD_num (scalar_t__) ;
 int standard_methods ;

size_t EVP_PKEY_meth_get_count(void)
{
    size_t rv = OSSL_NELEM(standard_methods);

    if (app_pkey_methods)
        rv += sk_EVP_PKEY_METHOD_num(app_pkey_methods);
    return rv;
}
