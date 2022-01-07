
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 int const rsa_pss_pkey_meth ;

const EVP_PKEY_METHOD *rsa_pss_pkey_method(void)
{
    return &rsa_pss_pkey_meth;
}
