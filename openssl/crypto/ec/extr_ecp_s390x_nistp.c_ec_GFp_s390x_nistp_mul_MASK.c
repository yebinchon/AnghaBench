#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  param ;
struct TYPE_11__ {TYPE_1__* meth; int /*<<< orphan*/  libctx; } ;
struct TYPE_10__ {int (* point_get_affine_coordinates ) (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;int (* point_set_affine_coordinates ) (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (unsigned char*,int,int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*,unsigned char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__ const*) ; 
 int FUNC10 (TYPE_2__ const*,int /*<<< orphan*/  const*) ; 
 int FUNC11 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int S390X_SIZE_PARAM ; 
 int FUNC18 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (unsigned int,unsigned char*) ; 
 int FUNC21 (TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(const EC_GROUP *group, EC_POINT *r,
                                  const BIGNUM *scalar,
                                  size_t num, const EC_POINT *points[],
                                  const BIGNUM *scalars[],
                                  BN_CTX *ctx, unsigned int fc, int len)
{
    unsigned char param[S390X_SIZE_PARAM];
    BIGNUM *x, *y;
    const EC_POINT *point_ptr = NULL;
    const BIGNUM *scalar_ptr = NULL;
    BN_CTX *new_ctx = NULL;
    int rc = -1;

    if (ctx == NULL) {
        ctx = new_ctx = FUNC3(group->libctx);
        if (ctx == NULL)
            return 0;
    }

    FUNC4(ctx);

    x = FUNC2(ctx);
    y = FUNC2(ctx);
    if (x == NULL || y == NULL) {
        rc = 0;
        goto ret;
    }

    /*
     * Use PCC for EC keygen and ECDH key derivation:
     * scalar * generator and scalar * peer public key,
     * scalar in [0,order).
     */
    if ((scalar != NULL && num == 0 && FUNC7(scalar) == 0)
        || (scalar == NULL && num == 1 && FUNC7(scalars[0]) == 0)) {

        if (num == 0) {
            point_ptr = FUNC9(group);
            scalar_ptr = scalar;
        } else {
            point_ptr = points[0];
            scalar_ptr = scalars[0];
        }

        if (FUNC10(group, point_ptr) == 1
            || FUNC8(scalar_ptr)) {
            rc = FUNC11(group, r);
            goto ret;
        }

        FUNC19(&param, 0, sizeof(param));

        if (group->meth->point_get_affine_coordinates(group, point_ptr,
                                                      x, y, ctx) != 1
            || FUNC6(x, param + FUNC16(len), len) == -1
            || FUNC6(y, param + FUNC17(len), len) == -1
            || FUNC6(scalar_ptr,
                            param + FUNC15(len), len) == -1
            || FUNC20(fc, param) != 0
            || FUNC5(param + FUNC13(len), len, x) == NULL
            || FUNC5(param + FUNC14(len), len, y) == NULL
            || group->meth->point_set_affine_coordinates(group, r,
                                                         x, y, ctx) != 1)
            goto ret;

        rc = 1;
    }

ret:
    /* Otherwise use default. */
    if (rc == -1)
        rc = FUNC18(group, r, scalar, num, points, scalars, ctx);
    FUNC12(param + FUNC15(len), len);
    FUNC0(ctx);
    FUNC1(new_ctx);
    return rc;
}