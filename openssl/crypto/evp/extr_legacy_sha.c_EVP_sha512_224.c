
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int const sha512_224_md ;

const EVP_MD *EVP_sha512_224(void)
{
    return &sha512_224_md;
}
