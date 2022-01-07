
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const des3_wrap ;

const EVP_CIPHER *EVP_des_ede3_wrap(void)
{
    return &des3_wrap;
}
