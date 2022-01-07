
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSA_METHOD ;


 int const openssl_dsa_meth ;

const DSA_METHOD *DSA_OpenSSL(void)
{
    return &openssl_dsa_meth;
}
