
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int counter; int mod; int * A; int * m_ctx; int * Ai; } ;
typedef int BN_CTX ;
typedef TYPE_1__ BN_BLINDING ;
typedef int BIGNUM ;


 int BN_BLINDING_update (TYPE_1__*,int *) ;
 int BN_F_BN_BLINDING_CONVERT_EX ;
 int BN_R_NOT_INITIALIZED ;
 int * BN_copy (int *,int *) ;
 int BN_mod_mul (int *,int *,int *,int ,int *) ;
 int BN_mod_mul_montgomery (int *,int *,int *,int *,int *) ;
 int BNerr (int ,int ) ;
 int bn_check_top (int *) ;

int BN_BLINDING_convert_ex(BIGNUM *n, BIGNUM *r, BN_BLINDING *b, BN_CTX *ctx)
{
    int ret = 1;

    bn_check_top(n);

    if ((b->A == ((void*)0)) || (b->Ai == ((void*)0))) {
        BNerr(BN_F_BN_BLINDING_CONVERT_EX, BN_R_NOT_INITIALIZED);
        return 0;
    }

    if (b->counter == -1)

        b->counter = 0;
    else if (!BN_BLINDING_update(b, ctx))
        return 0;

    if (r != ((void*)0) && (BN_copy(r, b->Ai) == ((void*)0)))
        return 0;

    if (b->m_ctx != ((void*)0))
        ret = BN_mod_mul_montgomery(n, n, b->A, b->m_ctx, ctx);
    else
        ret = BN_mod_mul(n, n, b->A, b->mod, ctx);

    return ret;
}
