
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int param ;
struct TYPE_9__ {int * s; int * r; } ;
struct TYPE_8__ {TYPE_1__* meth; int libctx; } ;
struct TYPE_7__ {int (* point_get_affine_coordinates ) (TYPE_2__ const*,int const*,int *,int *,int *) ;} ;
typedef int EC_POINT ;
typedef int EC_KEY ;
typedef TYPE_2__ EC_GROUP ;
typedef TYPE_3__ ECDSA_SIG ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int ) ;
 int BN_CTX_start (int *) ;
 int BN_bn2binpad (int *,unsigned char*,int) ;
 int EC_F_ECDSA_S390X_NISTP_VERIFY_SIG ;
 int EC_KEY_can_sign (int *) ;
 TYPE_2__* EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_public_key (int *) ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ;
 int EC_R_MISSING_PARAMETERS ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int S390X_OFF_H (int) ;
 int S390X_OFF_R (int) ;
 int S390X_OFF_S (int) ;
 int S390X_OFF_X (int) ;
 int S390X_OFF_Y (int) ;
 int S390X_SIZE_PARAM ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ s390x_kdsa (unsigned int,unsigned char*,int *,int ) ;
 int stub1 (TYPE_2__ const*,int const*,int *,int *,int *) ;

__attribute__((used)) static int ecdsa_s390x_nistp_verify_sig(const unsigned char *dgst, int dgstlen,
                                        const ECDSA_SIG *sig, EC_KEY *eckey,
                                        unsigned int fc, int len)
{
    unsigned char param[S390X_SIZE_PARAM];
    int rc = -1;
    BN_CTX *ctx;
    BIGNUM *x, *y;
    const EC_GROUP *group;
    const EC_POINT *pubkey;
    int off;

    group = EC_KEY_get0_group(eckey);
    pubkey = EC_KEY_get0_public_key(eckey);
    if (eckey == ((void*)0) || group == ((void*)0) || pubkey == ((void*)0) || sig == ((void*)0)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG, EC_R_MISSING_PARAMETERS);
        return -1;
    }

    if (!EC_KEY_can_sign(eckey)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG,
              EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return -1;
    }

    ctx = BN_CTX_new_ex(group->libctx);
    if (ctx == ((void*)0)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    BN_CTX_start(ctx);

    x = BN_CTX_get(ctx);
    y = BN_CTX_get(ctx);
    if (x == ((void*)0) || y == ((void*)0)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG, ERR_R_MALLOC_FAILURE);
        goto ret;
    }

    memset(param, 0, sizeof(param));
    off = len - (dgstlen > len ? len : dgstlen);
    memcpy(param + S390X_OFF_H(len) + off, dgst, len - off);

    if (group->meth->point_get_affine_coordinates(group, pubkey,
                                                  x, y, ctx) != 1
        || BN_bn2binpad(sig->r, param + S390X_OFF_R(len), len) == -1
        || BN_bn2binpad(sig->s, param + S390X_OFF_S(len), len) == -1
        || BN_bn2binpad(x, param + S390X_OFF_X(len), len) == -1
        || BN_bn2binpad(y, param + S390X_OFF_Y(len), len) == -1) {
        ECerr(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG, ERR_R_BN_LIB);
        goto ret;
    }

    rc = s390x_kdsa(fc, param, ((void*)0), 0) == 0 ? 1 : 0;
ret:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return rc;
}
