
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int const ripemd160_md ;

const EVP_MD *EVP_ripemd160(void)
{
    return &ripemd160_md;
}
