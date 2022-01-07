
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int const* r; int const* s; } ;
struct TYPE_8__ {int libctx; } ;
typedef int EC_POINT ;
typedef TYPE_1__ EC_KEY ;
typedef int EC_GROUP ;
typedef TYPE_2__ ECDSA_SIG ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int const* BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 int BN_bin2bn (unsigned char const*,int,int const*) ;
 scalar_t__ BN_is_negative (int const*) ;
 scalar_t__ BN_is_zero (int const*) ;
 int BN_mod_mul (int const*,int const*,int const*,int const*,int *) ;
 int BN_nnmod (int const*,int const*,int const*,int *) ;
 int BN_num_bits (int const*) ;
 int BN_rshift (int const*,int const*,int) ;
 scalar_t__ BN_ucmp (int const*,int const*) ;
 int EC_F_ECDSA_SIMPLE_VERIFY_SIG ;
 int const* EC_GROUP_get0_order (int const*) ;
 int EC_KEY_can_sign (TYPE_1__*) ;
 int * EC_KEY_get0_group (TYPE_1__*) ;
 int * EC_KEY_get0_public_key (TYPE_1__*) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_get_affine_coordinates (int const*,int *,int const*,int *,int *) ;
 int EC_POINT_mul (int const*,int *,int const*,int const*,int const*,int *) ;
 int * EC_POINT_new (int const*) ;
 int EC_R_BAD_SIGNATURE ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ;
 int EC_R_MISSING_PARAMETERS ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ec_group_do_inverse_ord (int const*,int const*,int const*,int *) ;

int ecdsa_simple_verify_sig(const unsigned char *dgst, int dgst_len,
                            const ECDSA_SIG *sig, EC_KEY *eckey)
{
    int ret = -1, i;
    BN_CTX *ctx;
    const BIGNUM *order;
    BIGNUM *u1, *u2, *m, *X;
    EC_POINT *point = ((void*)0);
    const EC_GROUP *group;
    const EC_POINT *pub_key;


    if (eckey == ((void*)0) || (group = EC_KEY_get0_group(eckey)) == ((void*)0) ||
        (pub_key = EC_KEY_get0_public_key(eckey)) == ((void*)0) || sig == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, EC_R_MISSING_PARAMETERS);
        return -1;
    }

    if (!EC_KEY_can_sign(eckey)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return -1;
    }

    ctx = BN_CTX_new_ex(eckey->libctx);
    if (ctx == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_MALLOC_FAILURE);
        return -1;
    }
    BN_CTX_start(ctx);
    u1 = BN_CTX_get(ctx);
    u2 = BN_CTX_get(ctx);
    m = BN_CTX_get(ctx);
    X = BN_CTX_get(ctx);
    if (X == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    order = EC_GROUP_get0_order(group);
    if (order == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_EC_LIB);
        goto err;
    }

    if (BN_is_zero(sig->r) || BN_is_negative(sig->r) ||
        BN_ucmp(sig->r, order) >= 0 || BN_is_zero(sig->s) ||
        BN_is_negative(sig->s) || BN_ucmp(sig->s, order) >= 0) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, EC_R_BAD_SIGNATURE);
        ret = 0;
        goto err;
    }

    if (!ec_group_do_inverse_ord(group, u2, sig->s, ctx)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    i = BN_num_bits(order);



    if (8 * dgst_len > i)
        dgst_len = (i + 7) / 8;
    if (!BN_bin2bn(dgst, dgst_len, m)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    if ((8 * dgst_len > i) && !BN_rshift(m, m, 8 - (i & 0x7))) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    if (!BN_mod_mul(u1, m, u2, order, ctx)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    if (!BN_mod_mul(u2, sig->r, u2, order, ctx)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    if ((point = EC_POINT_new(group)) == ((void*)0)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (!EC_POINT_mul(group, point, u1, pub_key, u2, ctx)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_EC_LIB);
        goto err;
    }

    if (!EC_POINT_get_affine_coordinates(group, point, X, ((void*)0), ctx)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_EC_LIB);
        goto err;
    }

    if (!BN_nnmod(u1, X, order, ctx)) {
        ECerr(EC_F_ECDSA_SIMPLE_VERIFY_SIG, ERR_R_BN_LIB);
        goto err;
    }

    ret = (BN_ucmp(u1, sig->r) == 0);
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    EC_POINT_free(point);
    return ret;
}
