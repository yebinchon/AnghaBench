#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  param ;
struct TYPE_9__ {int /*<<< orphan*/ * s; int /*<<< orphan*/ * r; } ;
struct TYPE_8__ {TYPE_1__* meth; int /*<<< orphan*/  libctx; } ;
struct TYPE_7__ {int (* point_get_affine_coordinates ) (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  TYPE_2__ EC_GROUP ;
typedef  TYPE_3__ ECDSA_SIG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  EC_F_ECDSA_S390X_NISTP_VERIFY_SIG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ; 
 int /*<<< orphan*/  EC_R_MISSING_PARAMETERS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int S390X_SIZE_PARAM ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (unsigned int,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(const unsigned char *dgst, int dgstlen,
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

    group = FUNC7(eckey);
    pubkey = FUNC8(eckey);
    if (eckey == NULL || group == NULL || pubkey == NULL || sig == NULL) {
        FUNC9(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG, EC_R_MISSING_PARAMETERS);
        return -1;
    }

    if (!FUNC6(eckey)) {
        FUNC9(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG,
              EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return -1;
    }

    ctx = FUNC3(group->libctx);
    if (ctx == NULL) {
        FUNC9(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    FUNC4(ctx);

    x = FUNC2(ctx);
    y = FUNC2(ctx);
    if (x == NULL || y == NULL) {
        FUNC9(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG, ERR_R_MALLOC_FAILURE);
        goto ret;
    }

    FUNC16(param, 0, sizeof(param));
    off = len - (dgstlen > len ? len : dgstlen);
    FUNC15(param + FUNC10(len) + off, dgst, len - off);

    if (group->meth->point_get_affine_coordinates(group, pubkey,
                                                  x, y, ctx) != 1
        || FUNC5(sig->r, param + FUNC11(len), len) == -1
        || FUNC5(sig->s, param + FUNC12(len), len) == -1
        || FUNC5(x, param + FUNC13(len), len) == -1
        || FUNC5(y, param + FUNC14(len), len) == -1) {
        FUNC9(EC_F_ECDSA_S390X_NISTP_VERIFY_SIG, ERR_R_BN_LIB);
        goto ret;
    }

    rc = FUNC17(fc, param, NULL, 0) == 0 ? 1 : 0;
ret:
    FUNC0(ctx);
    FUNC1(ctx);
    return rc;
}