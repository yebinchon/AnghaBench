
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_METHOD ;


 int const ec_pkey_meth ;

const EVP_PKEY_METHOD *ec_pkey_method(void)
{
    return &ec_pkey_meth;
}
