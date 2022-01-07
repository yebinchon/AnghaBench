
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const* EVP_rc2_cfb64 () ;

const EVP_CIPHER *EVP_rc2_cfb(void)
{
    return EVP_rc2_cfb64();
}
