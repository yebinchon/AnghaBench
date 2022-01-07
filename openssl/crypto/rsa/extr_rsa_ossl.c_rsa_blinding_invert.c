
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BN_BLINDING ;
typedef int BIGNUM ;


 int BN_BLINDING_invert_ex (int *,int *,int *,int *) ;

__attribute__((used)) static int rsa_blinding_invert(BN_BLINDING *b, BIGNUM *f, BIGNUM *unblind,
                               BN_CTX *ctx)
{
    return BN_BLINDING_invert_ex(f, unblind, b, ctx);
}
