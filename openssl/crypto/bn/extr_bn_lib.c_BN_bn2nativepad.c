
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_bn2binpad (int const*,unsigned char*,int) ;
 int BN_bn2lebinpad (int const*,unsigned char*,int) ;

int BN_bn2nativepad(const BIGNUM *a, unsigned char *to, int tolen)
{



    return BN_bn2lebinpad(a, to, tolen);

}
