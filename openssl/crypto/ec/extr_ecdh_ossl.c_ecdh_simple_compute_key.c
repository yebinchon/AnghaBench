
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int libctx; } ;
typedef int EC_POINT ;
typedef TYPE_1__ EC_KEY ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_bn2bin (int *,unsigned char*) ;
 int BN_mul (int *,int *,int const*,int *) ;
 size_t BN_num_bytes (int *) ;
 int EC_FLAG_COFACTOR_ECDH ;
 int EC_F_ECDH_SIMPLE_COMPUTE_KEY ;
 int EC_GROUP_get_cofactor (int const*,int *,int *) ;
 int EC_GROUP_get_degree (int const*) ;
 int * EC_KEY_get0_group (TYPE_1__ const*) ;
 int * EC_KEY_get0_private_key (TYPE_1__ const*) ;
 int EC_KEY_get_flags (TYPE_1__ const*) ;
 int EC_POINT_clear_free (int *) ;
 int EC_POINT_get_affine_coordinates (int const*,int *,int *,int *,int *) ;
 int EC_POINT_mul (int const*,int *,int *,int const*,int const*,int *) ;
 int * EC_POINT_new (int const*) ;
 int EC_R_MISSING_PRIVATE_KEY ;
 int EC_R_POINT_ARITHMETIC_FAILURE ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int memset (unsigned char*,int ,size_t) ;

int ecdh_simple_compute_key(unsigned char **pout, size_t *poutlen,
                            const EC_POINT *pub_key, const EC_KEY *ecdh)
{
    BN_CTX *ctx;
    EC_POINT *tmp = ((void*)0);
    BIGNUM *x = ((void*)0);
    const BIGNUM *priv_key;
    const EC_GROUP *group;
    int ret = 0;
    size_t buflen, len;
    unsigned char *buf = ((void*)0);

    if ((ctx = BN_CTX_new_ex(ecdh->libctx)) == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    x = BN_CTX_get(ctx);
    if (x == ((void*)0)) {
        ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    priv_key = EC_KEY_get0_private_key(ecdh);
    if (priv_key == ((void*)0)) {
        ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, EC_R_MISSING_PRIVATE_KEY);
        goto err;
    }

    group = EC_KEY_get0_group(ecdh);

    if (EC_KEY_get_flags(ecdh) & EC_FLAG_COFACTOR_ECDH) {
        if (!EC_GROUP_get_cofactor(group, x, ((void*)0)) ||
            !BN_mul(x, x, priv_key, ctx)) {
            ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        priv_key = x;
    }

    if ((tmp = EC_POINT_new(group)) == ((void*)0)) {
        ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (!EC_POINT_mul(group, tmp, ((void*)0), pub_key, priv_key, ctx)) {
        ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, EC_R_POINT_ARITHMETIC_FAILURE);
        goto err;
    }

    if (!EC_POINT_get_affine_coordinates(group, tmp, x, ((void*)0), ctx)) {
        ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, EC_R_POINT_ARITHMETIC_FAILURE);
        goto err;
    }

    buflen = (EC_GROUP_get_degree(group) + 7) / 8;
    len = BN_num_bytes(x);
    if (len > buflen) {
        ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if ((buf = OPENSSL_malloc(buflen)) == ((void*)0)) {
        ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    memset(buf, 0, buflen - len);
    if (len != (size_t)BN_bn2bin(x, buf + buflen - len)) {
        ECerr(EC_F_ECDH_SIMPLE_COMPUTE_KEY, ERR_R_BN_LIB);
        goto err;
    }

    *pout = buf;
    *poutlen = buflen;
    buf = ((void*)0);

    ret = 1;

 err:
    EC_POINT_clear_free(tmp);
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    OPENSSL_free(buf);
    return ret;
}
