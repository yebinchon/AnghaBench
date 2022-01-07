
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 int const rsa_pkey_meth ;

const EVP_PKEY_METHOD *rsa_pkey_method(void)
{
    return &rsa_pkey_meth;
}
