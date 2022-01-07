
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char const*,int,int *) ;
 int * BN_lebin2bn (unsigned char const*,int,int *) ;

BIGNUM *BN_native2bn(const unsigned char *s, int len, BIGNUM *ret)
{



    return BN_lebin2bn(s, len, ret);

}
