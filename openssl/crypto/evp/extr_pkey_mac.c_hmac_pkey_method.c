
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 int const hmac_pkey_meth ;

const EVP_PKEY_METHOD *hmac_pkey_method(void)
{
    return &hmac_pkey_meth;
}
