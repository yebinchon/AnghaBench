
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; int g; } ;
typedef TYPE_1__ DH ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int ,int *) ;
 int * BN_copy (int *,int ) ;
 scalar_t__ BN_is_negative (int ) ;
 int BN_is_odd (int ) ;
 scalar_t__ BN_is_one (int ) ;
 scalar_t__ BN_is_zero (int ) ;
 scalar_t__ BN_num_bits (int ) ;
 int BN_sub_word (int *,int) ;
 int DH_CHECK_P_NOT_PRIME ;
 scalar_t__ DH_MIN_MODULUS_BITS ;
 int DH_MODULUS_TOO_LARGE ;
 int DH_MODULUS_TOO_SMALL ;
 int DH_NOT_SUITABLE_GENERATOR ;
 scalar_t__ OPENSSL_DH_MAX_MODULUS_BITS ;

int DH_check_params(const DH *dh, int *ret)
{
    int ok = 0;
    BIGNUM *tmp = ((void*)0);
    BN_CTX *ctx = ((void*)0);

    *ret = 0;
    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    tmp = BN_CTX_get(ctx);
    if (tmp == ((void*)0))
        goto err;

    if (!BN_is_odd(dh->p))
        *ret |= DH_CHECK_P_NOT_PRIME;
    if (BN_is_negative(dh->g) || BN_is_zero(dh->g) || BN_is_one(dh->g))
        *ret |= DH_NOT_SUITABLE_GENERATOR;
    if (BN_copy(tmp, dh->p) == ((void*)0) || !BN_sub_word(tmp, 1))
        goto err;
    if (BN_cmp(dh->g, tmp) >= 0)
        *ret |= DH_NOT_SUITABLE_GENERATOR;
    if (BN_num_bits(dh->p) < DH_MIN_MODULUS_BITS)
        *ret |= DH_MODULUS_TOO_SMALL;
    if (BN_num_bits(dh->p) > OPENSSL_DH_MAX_MODULUS_BITS)
        *ret |= DH_MODULUS_TOO_LARGE;

    ok = 1;
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return ok;
}
