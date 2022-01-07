
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_bin2bn (unsigned char const*,int,int *) ;
 int * BN_new () ;

__attribute__((used)) static BIGNUM *bn_load_new(const unsigned char *data, int sz)
{
    BIGNUM *ret = BN_new();
    if (ret != ((void*)0))
        BN_bin2bn(data, sz, ret);
    return ret;
}
