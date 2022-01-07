
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH_METHOD ;


 int const dh_ossl ;

const DH_METHOD *DH_OpenSSL(void)
{
    return &dh_ossl;
}
