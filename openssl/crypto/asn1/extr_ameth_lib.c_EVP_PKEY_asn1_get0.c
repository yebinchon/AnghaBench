
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_ASN1_METHOD ;


 int OSSL_NELEM (int const**) ;
 int app_methods ;
 int const* sk_EVP_PKEY_ASN1_METHOD_value (int ,int) ;
 int const** standard_methods ;

const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_get0(int idx)
{
    int num = OSSL_NELEM(standard_methods);
    if (idx < 0)
        return ((void*)0);
    if (idx < num)
        return standard_methods[idx];
    idx -= num;
    return sk_EVP_PKEY_ASN1_METHOD_value(app_methods, idx);
}
