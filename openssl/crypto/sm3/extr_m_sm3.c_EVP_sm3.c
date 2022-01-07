
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int const sm3_md ;

const EVP_MD *EVP_sm3(void)
{
    return &sm3_md;
}
