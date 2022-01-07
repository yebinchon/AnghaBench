
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int * BN_CTX_get (int *) ;
 int BN_bin2bn (unsigned char const*,int,int *) ;

__attribute__((used)) static BIGNUM *bn_load(BN_CTX *ctx, const unsigned char *data, int sz)
{
    BIGNUM *ret = BN_CTX_get(ctx);
    if (ret != ((void*)0))
        BN_bin2bn(data, sz, ret);
    return ret;
}
