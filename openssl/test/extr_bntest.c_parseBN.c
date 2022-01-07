
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_hex2bn (int **,char const*) ;

__attribute__((used)) static int parseBN(BIGNUM **out, const char *in)
{
    *out = ((void*)0);
    return BN_hex2bn(out, in);
}
