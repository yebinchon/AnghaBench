#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  invalid_seed ;
struct TYPE_2__ {int nid; } ;
typedef  int /*<<< orphan*/  const EC_POINT ;
typedef  int /*<<< orphan*/  const EC_GROUP ;
typedef  int /*<<< orphan*/  const BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC15 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC20 (int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/  const*,unsigned char const*,size_t) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC27 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int NID_X9_62_characteristic_two_field ; 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 
 TYPE_1__* curves ; 

__attribute__((used)) static int FUNC37(int id)
{
    int ret = 0, nid, field_nid, has_seed;
    EC_GROUP *group = NULL, *gtest = NULL;
    const EC_POINT *group_gen = NULL;
    EC_POINT *other_gen = NULL;
    BIGNUM *group_p = NULL, *group_a = NULL, *group_b = NULL;
    BIGNUM *other_p = NULL, *other_a = NULL, *other_b = NULL;
    BIGNUM *group_cofactor = NULL, *other_cofactor = NULL;
    BIGNUM *other_order = NULL;
    const BIGNUM *group_order = NULL;
    BN_CTX *bn_ctx = NULL;
    static const unsigned char invalid_seed[] = "THIS IS NOT A VALID SEED";
    static size_t invalid_seed_len = sizeof(invalid_seed);

    /* Do some setup */
    nid = curves[id].nid;
    if (!FUNC35(bn_ctx = FUNC1())
        || !FUNC35(group = FUNC20(nid))
        || !FUNC35(gtest = FUNC12(group))
        || !FUNC35(group_p = FUNC9())
        || !FUNC35(group_a = FUNC9())
        || !FUNC35(group_b = FUNC9())
        || !FUNC35(group_cofactor = FUNC9())
        || !FUNC35(group_gen = FUNC14(group))
        || !FUNC35(group_order = FUNC15(group))
        || !FUNC36(FUNC16(group, group_cofactor, NULL))
        || !FUNC36(FUNC17(group, group_p, group_a, group_b, NULL))
        || !FUNC35(other_gen = FUNC27(group_gen, group))
        || !FUNC36(FUNC26(group, other_gen, group_gen, group_gen, NULL))
        || !FUNC35(other_order = FUNC4(group_order))
        || !FUNC36(FUNC2(other_order, 1))
        || !FUNC35(other_a = FUNC4(group_a))
        || !FUNC36(FUNC2(other_a, 1))
        || !FUNC35(other_b = FUNC4(group_b))
        || !FUNC36(FUNC2(other_b, 1))
        || !FUNC35(other_cofactor = FUNC4(group_cofactor))
        || !FUNC36(FUNC2(other_cofactor, 1)))
        goto err;

    /* Determine if the built-in curve has a seed field set */
    has_seed = (FUNC18(group) > 0);
    field_nid = FUNC25(FUNC19(group));
    if (field_nid == NID_X9_62_characteristic_two_field) {
        if (!FUNC35(other_p = FUNC4(group_p))
            || !FUNC36(FUNC8(other_p, other_p)))
            goto err;
    } else {
        if (!FUNC35(other_p = FUNC4(group_p)))
            goto err;
        /*
         * Just choosing any arbitrary prime does not work..
         * Setting p via ec_GFp_nist_group_set_curve() needs the prime to be a
         * nist prime. So only select one of these as an alternate prime.
         */
        if (!FUNC35(FUNC3(other_p,
                              FUNC10(FUNC6(), other_p) == 0 ?
                                      FUNC7() :
                                      FUNC6())))
            goto err;
    }

    /* Passes because this is a valid curve */
    if (!FUNC33(FUNC11(group, 0, NULL), nid)
        /* Only NIST curves pass */
        || !FUNC33(FUNC11(group, 1, NULL),
                        FUNC29(nid) != NULL ? nid : NID_undef))
        goto err;

    /* Fail if the curve name doesn't match the parameters */
    FUNC22(group, nid + 1);
    FUNC31();
    if (!FUNC34(FUNC11(group, 0, NULL), 0))
        goto err;
    FUNC30();

    /* Restore curve name and ensure it's passing */
    FUNC22(group, nid);
    if (!FUNC33(FUNC11(group, 0, NULL), nid))
        goto err;

    if (!FUNC33(FUNC24(group, invalid_seed, invalid_seed_len),
                     invalid_seed_len))
        goto err;

    if (has_seed) {
        /*
         * If the built-in curve has a seed and we set the seed to another value
         * then it will fail the check.
         */
        if (!FUNC33(FUNC11(group, 0, NULL), 0))
            goto err;
    } else {
        /*
         * If the built-in curve does not have a seed then setting the seed will
         * pass the check (as the seed is optional).
         */
        if (!FUNC33(FUNC11(group, 0, NULL), nid))
            goto err;
    }
    /* Pass if the seed is unknown (as it is optional) */
    if (!FUNC33(FUNC24(group, NULL, 0), 1)
        || !FUNC33(FUNC11(group, 0, NULL), nid))
        goto err;

    /* Check that a duped group passes */
    if (!FUNC33(FUNC11(gtest, 0, NULL), nid))
        goto err;

    /* check that changing any generator parameter fails */
    if (!FUNC36(FUNC23(gtest, other_gen, group_order,
                                          group_cofactor))
        || !FUNC33(FUNC11(gtest, 0, NULL), 0)
        || !FUNC36(FUNC23(gtest, group_gen, other_order,
                                             group_cofactor))
        || !FUNC33(FUNC11(gtest, 0, NULL), 0)
        /* The order is not an optional field, so this should fail */
        || !FUNC32(FUNC23(gtest, group_gen, NULL,
                                              group_cofactor))
        || !FUNC36(FUNC23(gtest, group_gen, group_order,
                                             other_cofactor))
        || !FUNC33(FUNC11(gtest, 0, NULL), 0)
        /* Check that if the cofactor is not set then it still passes */
        || !FUNC36(FUNC23(gtest, group_gen, group_order,
                                             NULL))
        || !FUNC33(FUNC11(gtest, 0, NULL), nid)
        /* check that restoring the generator passes */
        || !FUNC36(FUNC23(gtest, group_gen, group_order,
                                             group_cofactor))
        || !FUNC33(FUNC11(gtest, 0, NULL), nid))
        goto err;

    /*
     * check that changing any curve parameter fails
     *
     * Setting arbitrary p, a or b might fail for some EC_GROUPs
     * depending on the internal EC_METHOD implementation, hence run
     * these tests conditionally to the success of EC_GROUP_set_curve().
     */
    FUNC31();
    if (FUNC21(gtest, other_p, group_a, group_b, NULL)) {
        if (!FUNC34(FUNC11(gtest, 0, NULL), 0))
            goto err;
    } else {
        /* clear the error stack if EC_GROUP_set_curve() failed */
        FUNC30();
        FUNC31();
    }
    if (FUNC21(gtest, group_p, other_a, group_b, NULL)) {
        if (!FUNC34(FUNC11(gtest, 0, NULL), 0))
            goto err;
    } else {
        /* clear the error stack if EC_GROUP_set_curve() failed */
        FUNC30();
        FUNC31();
    }
    if (FUNC21(gtest, group_p, group_a, other_b, NULL)) {
        if (!FUNC34(FUNC11(gtest, 0, NULL), 0))
            goto err;
    } else {
        /* clear the error stack if EC_GROUP_set_curve() failed */
        FUNC30();
        FUNC31();
    }
    FUNC30();

    /* Check that restoring the curve parameters passes */
    if (!FUNC36(FUNC21(gtest, group_p, group_a, group_b, NULL))
        || !FUNC33(FUNC11(gtest, 0, NULL), nid))
        goto err;

    ret = 1;
err:
    FUNC5(group_p);
    FUNC5(other_p);
    FUNC5(group_a);
    FUNC5(other_a);
    FUNC5(group_b);
    FUNC5(other_b);
    FUNC5(group_cofactor);
    FUNC5(other_cofactor);
    FUNC5(other_order);
    FUNC28(other_gen);
    FUNC13(gtest);
    FUNC13(group);
    FUNC0(bn_ctx);
    return ret;
}