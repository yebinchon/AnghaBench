
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;



__attribute__((used)) static int pkey_custom_pub_check(EVP_PKEY *pkey)
{
    return 0xbeef;
}
