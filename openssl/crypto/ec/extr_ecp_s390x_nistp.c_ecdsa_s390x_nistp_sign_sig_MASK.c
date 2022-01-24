#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  param ;
struct TYPE_5__ {int /*<<< orphan*/ * s; int /*<<< orphan*/ * r; } ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_1__ ECDSA_SIG ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  EC_F_ECDSA_S390X_NISTP_SIGN_SIG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ; 
 int /*<<< orphan*/  EC_R_MISSING_PARAMETERS ; 
 int /*<<< orphan*/  EC_R_RANDOM_NUMBER_GENERATION_FAILED ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_ECDSA_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int) ; 
 int FUNC12 (unsigned char*,int) ; 
 unsigned int S390X_KDSA_D ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int S390X_SIZE_PARAM ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (unsigned int,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ECDSA_SIG *FUNC22(const unsigned char *dgst,
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

    group = FUNC8(eckey);
    privkey = FUNC9(eckey);
    if (group == NULL || privkey == NULL) {
        FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, EC_R_MISSING_PARAMETERS);
        return NULL;
    }

    if (!FUNC7(eckey)) {
        FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG,
              EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return NULL;
    }

    k = FUNC4();
    sig = FUNC6();
    if (k == NULL || sig == NULL) {
        FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        goto ret;
    }

    sig->r = FUNC3();
    sig->s = FUNC3();
    if (sig->r == NULL || sig->s == NULL) {
        FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        goto ret;
    }

    FUNC20(param, 0, sizeof(param));
    off = len - (dgstlen > len ? len : dgstlen);
    FUNC19(param + FUNC13(len) + off, dgst, len - off);

    if (FUNC1(privkey, param + FUNC14(len), len) == -1) {
        FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_BN_LIB);
        goto ret;
    }

    if (r == NULL || kinv == NULL) {
        /*
         * Generate random k and copy to param param block. RAND_priv_bytes
         * is used instead of BN_priv_rand_range or BN_generate_dsa_nonce
         * because kdsa instruction constructs an in-range, invertible nonce
         * internally implementing counter-measures for RNG weakness.
         */
         if (FUNC12(param + FUNC16(len), len) != 1) {
             FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG,
                   EC_R_RANDOM_NUMBER_GENERATION_FAILED);
             goto ret;
         }
    } else {
        /* Reconstruct k = (k^-1)^-1. */
        if (FUNC18(group, k, kinv, NULL) == 0
            || FUNC1(k, param + FUNC16(len), len) == -1) {
            FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_BN_LIB);
            goto ret;
        }
        /* Turns KDSA internal nonce-generation off. */
        fc |= S390X_KDSA_D;
    }

    if (FUNC21(fc, param, NULL, 0) != 0) {
        FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_ECDSA_LIB);
        goto ret;
    }

    if (FUNC0(param + FUNC15(len), len, sig->r) == NULL
        || FUNC0(param + FUNC17(len), len, sig->s) == NULL) {
        FUNC10(EC_F_ECDSA_S390X_NISTP_SIGN_SIG, ERR_R_BN_LIB);
        goto ret;
    }

    ok = 1;
ret:
    FUNC11(param + FUNC14(len), 2 * len);
    if (ok != 1) {
        FUNC5(sig);
        sig = NULL;
    }
    FUNC2(k);
    return sig;
}