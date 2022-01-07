
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const d_xcbc_cipher ;

const EVP_CIPHER *EVP_desx_cbc(void)
{
    return &d_xcbc_cipher;
}
