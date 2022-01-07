
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int param ;
struct TYPE_5__ {int * s; int * r; } ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef TYPE_1__ ECDSA_SIG ;
typedef int const BIGNUM ;


 int * BN_bin2bn (unsigned char*,int,int *) ;
 int BN_bn2binpad (int const*,unsigned char*,int) ;
 int BN_clear_free (int const*) ;
 void* BN_new () ;
 int const* BN_secure_new () ;
 int ECDSA_SIG_free (TYPE_1__*) ;
 TYPE_1__* ECDSA_SIG_new () ;
 int EC_F_ECDSA_S390X_NISTP_SIGN_SIG ;
 int EC_KEY_can_sign (int *) ;
 int * EC_KEY_get0_group (int *) ;
 int const* EC_KEY_get0_private_key (int *) ;
 int EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ;
 int EC_R_MISSING_PARAMETERS ;
 int EC_R_RANDOM_NUMBER_GENERATION_FAILED ;
 int ECerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_ECDSA_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int RAND_priv_bytes (unsigned char*,int) ;
 unsigned int S390X_KDSA_D ;
 int S390X_OFF_H (int) ;
 int S390X_OFF_K (int) ;
 int S390X_OFF_R (int) ;
 int S390X_OFF_RN (int) ;
 int S390X_OFF_S (int) ;
 int S390X_SIZE_PARAM ;
 scalar_t__ ec_group_do_inverse_ord (int const*,int const*,int const*,int *) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ s390x_kdsa (unsigned int,unsigned char*,int *,int ) ;

__attribute__((used)) static ECDSA_SIG *ecdsa_s390x_nistp_sign_sig(const unsigned char *dgst,
                                             int dgstlen,
                                             const BIGNUM *kinv,
                                             const BIGNUM *r,
                                             EC_KEY *eckey,
                                             unsigned int fc, int len)
{
    unsigned char param[S390X_SIZE_PARAM];
    int ok = 0;
    BIGNUM *k;
    ECDSA_SIG *sig;
    const EC_GROUP *group;
    const BIGNUM *privkey;
    int off;

    group = EC_KEY_get0_group(eckey);
    privkey = EC_KEY_get0_private_key(eckey);
    if (group == ((void*)0) || privkey == ((void*)0)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, EC_R_MISSING_PARAMETERS);
        return ((void*)0);
    }

    if (!EC_KEY_can_sign(eckey)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG,
              EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return ((void*)0);
    }

    k = BN_secure_new();
    sig = ECDSA_SIG_new();
    if (k == ((void*)0) || sig == ((void*)0)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        goto ret;
    }

    sig->r = BN_new();
    sig->s = BN_new();
    if (sig->r == ((void*)0) || sig->s == ((void*)0)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        goto ret;
    }

    memset(param, 0, sizeof(param));
    off = len - (dgstlen > len ? len : dgstlen);
    memcpy(param + S390X_OFF_H(len) + off, dgst, len - off);

    if (BN_bn2binpad(privkey, param + S390X_OFF_K(len), len) == -1) {
        ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_BN_LIB);
        goto ret;
    }

    if (r == ((void*)0) || kinv == ((void*)0)) {






         if (RAND_priv_bytes(param + S390X_OFF_RN(len), len) != 1) {
             ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG,
                   EC_R_RANDOM_NUMBER_GENERATION_FAILED);
             goto ret;
         }
    } else {

        if (ec_group_do_inverse_ord(group, k, kinv, ((void*)0)) == 0
            || BN_bn2binpad(k, param + S390X_OFF_RN(len), len) == -1) {
            ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_BN_LIB);
            goto ret;
        }

        fc |= S390X_KDSA_D;
    }

    if (s390x_kdsa(fc, param, ((void*)0), 0) != 0) {
        ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_ECDSA_LIB);
        goto ret;
    }

    if (BN_bin2bn(param + S390X_OFF_R(len), len, sig->r) == ((void*)0)
        || BN_bin2bn(param + S390X_OFF_S(len), len, sig->s) == ((void*)0)) {
        ECerr(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_BN_LIB);
        goto ret;
    }

    ok = 1;
ret:
    OPENSSL_cleanse(param + S390X_OFF_K(len), 2 * len);
    if (ok != 1) {
        ECDSA_SIG_free(sig);
        sig = ((void*)0);
    }
    BN_clear_free(k);
    return sig;
}
