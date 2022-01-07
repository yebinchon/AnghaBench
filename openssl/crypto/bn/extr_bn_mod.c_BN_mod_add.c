
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_add (int *,int const*,int const*) ;
 int BN_nnmod (int *,int *,int const*,int *) ;

int BN_mod_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m,
               BN_CTX *ctx)
{
    if (!BN_add(r, a, b))
        return 0;
    return BN_nnmod(r, r, m, ctx);
}
