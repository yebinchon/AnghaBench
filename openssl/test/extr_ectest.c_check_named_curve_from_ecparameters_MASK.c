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
typedef  int /*<<< orphan*/  const ECPARAMETERS ;
typedef  int /*<<< orphan*/  const BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/  const*) ; 
 void* FUNC15 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC16 (int) ; 
 void* FUNC17 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC19 (int /*<<< orphan*/  const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC21 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC24 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int OPENSSL_EC_EXPLICIT_CURVE ; 
 int FUNC27 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int,int) ; 
 int /*<<< orphan*/  FUNC31 (int,int) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int,int) ; 
 TYPE_1__* curves ; 

__attribute__((used)) static int FUNC36(int id)
{
    int ret = 0, nid, tnid;
    EC_GROUP *group = NULL, *tgroup = NULL, *tmpg = NULL;
    const EC_POINT *group_gen = NULL;
    EC_POINT *other_gen = NULL;
    BIGNUM *group_cofactor = NULL, *other_cofactor = NULL;
    BIGNUM *other_gen_x = NULL, *other_gen_y = NULL;
    const BIGNUM *group_order = NULL;
    BIGNUM *other_order = NULL;
    BN_CTX *bn_ctx = NULL;
    static const unsigned char invalid_seed[] = "THIS IS NOT A VALID SEED";
    static size_t invalid_seed_len = sizeof(invalid_seed);
    ECPARAMETERS *params = NULL, *other_params = NULL;
    EC_GROUP *g_ary[8] = {NULL};
    EC_GROUP **g_next = &g_ary[0];
    ECPARAMETERS *p_ary[8] = {NULL};
    ECPARAMETERS **p_next = &p_ary[0];

    /* Do some setup */
    nid = curves[id].nid;
    FUNC32("Curve %s", FUNC26(nid));
    if (!FUNC33(bn_ctx = FUNC3()))
        return ret;
    FUNC4(bn_ctx);

    if (/* Allocations */
        !FUNC33(group_cofactor = FUNC2(bn_ctx))
        || !FUNC33(other_gen_x = FUNC2(bn_ctx))
        || !FUNC33(other_gen_y = FUNC2(bn_ctx))
        || !FUNC33(other_order = FUNC2(bn_ctx))
        || !FUNC33(other_cofactor = FUNC2(bn_ctx))
        /* Generate reference group and params */
        || !FUNC33(group = FUNC16(nid))
        || !FUNC33(params = FUNC15(group, NULL))
        || !FUNC33(group_gen = FUNC10(group))
        || !FUNC33(group_order = FUNC11(group))
        || !FUNC34(FUNC13(group, group_cofactor, NULL))
        /* compute `other_*` values */
        || !FUNC33(tmpg = FUNC8(group))
        || !FUNC33(other_gen = FUNC21(group_gen, group))
        || !FUNC34(FUNC20(group, other_gen, group_gen, group_gen, NULL))
        || !FUNC34(FUNC23(group, other_gen,
                      other_gen_x, other_gen_y, bn_ctx))
        || !FUNC34(FUNC6(other_order, group_order))
        || !FUNC34(FUNC5(other_order, 1))
        || !FUNC34(FUNC6(other_cofactor, group_cofactor))
        || !FUNC34(FUNC5(other_cofactor, 1)))
        goto err;

    FUNC22(other_gen);
    other_gen = NULL;

    if (!FUNC33(other_gen = FUNC24(tmpg))
        || !FUNC34(FUNC25(tmpg, other_gen,
                                                      other_gen_x, other_gen_y,
                                                      bn_ctx)))
        goto err;

    /*
     * ###########################
     * # Actual tests start here #
     * ###########################
     */

    /*
     * Creating a group from built-in explicit parameters returns a
     * "named" EC_GROUP
     */
    if (!FUNC33(tgroup = *g_next++ = FUNC17(params))
        || !FUNC31((tnid = FUNC14(tgroup)), NID_undef))
        goto err;
    /*
     * We cannot always guarantee the names match, as the built-in table
     * contains aliases for the same curve with different names.
     */
    if (!FUNC34(FUNC35(nid, tnid))) {
        FUNC29("nid = %s, tnid = %s", FUNC26(nid), FUNC26(tnid));
        goto err;
    }
    /* Ensure that the OPENSSL_EC_EXPLICIT_CURVE ASN1 flag is set. */
    if (!FUNC30(FUNC12(tgroup), OPENSSL_EC_EXPLICIT_CURVE))
        goto err;

    /*
     * An invalid seed in the parameters should be ignored: expect a "named"
     * group.
     */
    if (!FUNC30(FUNC19(tmpg, invalid_seed, invalid_seed_len),
                     invalid_seed_len)
            || !FUNC33(other_params = *p_next++ =
                         FUNC15(tmpg, NULL))
            || !FUNC33(tgroup = *g_next++ =
                          FUNC17(other_params))
            || !FUNC31((tnid = FUNC14(tgroup)), NID_undef)
            || !FUNC34(FUNC35(nid, tnid))
            || !FUNC30(FUNC12(tgroup),
                            OPENSSL_EC_EXPLICIT_CURVE)) {
        FUNC29("nid = %s, tnid = %s", FUNC26(nid), FUNC26(tnid));
        goto err;
    }

    /*
     * A null seed in the parameters should be ignored, as it is optional:
     * expect a "named" group.
     */
    if (!FUNC30(FUNC19(tmpg, NULL, 0), 1)
            || !FUNC33(other_params = *p_next++ =
                         FUNC15(tmpg, NULL))
            || !FUNC33(tgroup = *g_next++ =
                          FUNC17(other_params))
            || !FUNC31((tnid = FUNC14(tgroup)), NID_undef)
            || !FUNC34(FUNC35(nid, tnid))
            || !FUNC30(FUNC12(tgroup),
                            OPENSSL_EC_EXPLICIT_CURVE)) {
        FUNC29("nid = %s, tnid = %s", FUNC26(nid), FUNC26(tnid));
        goto err;
    }

    /*
     * Check that changing any of the generator parameters does not yield a
     * match with the built-in curves
     */
    if (/* Other gen, same group order & cofactor */
        !FUNC34(FUNC18(tmpg, other_gen, group_order,
                                          group_cofactor))
        || !FUNC33(other_params = *p_next++ =
                     FUNC15(tmpg, NULL))
        || !FUNC33(tgroup = *g_next++ =
                      FUNC17(other_params))
        || !FUNC30((tnid = FUNC14(tgroup)), NID_undef)
        /* Same gen & cofactor, different order */
        || !FUNC34(FUNC18(tmpg, group_gen, other_order,
                                             group_cofactor))
        || !FUNC33(other_params = *p_next++ =
                     FUNC15(tmpg, NULL))
        || !FUNC33(tgroup = *g_next++ =
                      FUNC17(other_params))
        || !FUNC30((tnid = FUNC14(tgroup)), NID_undef)
        /* The order is not an optional field, so this should fail */
        || !FUNC28(FUNC18(tmpg, group_gen, NULL,
                                              group_cofactor))
        /* Check that a wrong cofactor is ignored, and we still match */
        || !FUNC34(FUNC18(tmpg, group_gen, group_order,
                                             other_cofactor))
        || !FUNC33(other_params = *p_next++ =
                     FUNC15(tmpg, NULL))
        || !FUNC33(tgroup = *g_next++ =
                      FUNC17(other_params))
        || !FUNC31((tnid = FUNC14(tgroup)), NID_undef)
        || !FUNC34(FUNC35(nid, tnid))
        || !FUNC30(FUNC12(tgroup),
                        OPENSSL_EC_EXPLICIT_CURVE)
        /* Check that if the cofactor is not set then it still matches */
        || !FUNC34(FUNC18(tmpg, group_gen, group_order,
                                             NULL))
        || !FUNC33(other_params = *p_next++ =
                     FUNC15(tmpg, NULL))
        || !FUNC33(tgroup = *g_next++ =
                      FUNC17(other_params))
        || !FUNC31((tnid = FUNC14(tgroup)), NID_undef)
        || !FUNC34(FUNC35(nid, tnid))
        || !FUNC30(FUNC12(tgroup),
                        OPENSSL_EC_EXPLICIT_CURVE)
        /* check that restoring the generator passes */
        || !FUNC34(FUNC18(tmpg, group_gen, group_order,
                                             group_cofactor))
        || !FUNC33(other_params = *p_next++ =
                     FUNC15(tmpg, NULL))
        || !FUNC33(tgroup = *g_next++ =
                      FUNC17(other_params))
        || !FUNC31((tnid = FUNC14(tgroup)), NID_undef)
        || !FUNC34(FUNC35(nid, tnid))
        || !FUNC30(FUNC12(tgroup),
                        OPENSSL_EC_EXPLICIT_CURVE))
        goto err;

    ret = 1;
err:
    for (g_next = &g_ary[0]; g_next < g_ary + FUNC27(g_ary); g_next++)
        FUNC9(*g_next);
    for (p_next = &p_ary[0]; p_next < p_ary + FUNC27(g_ary); p_next++)
        FUNC7(*p_next);
    FUNC7(params);
    FUNC22(other_gen);
    FUNC9(tmpg);
    FUNC9(group);
    FUNC0(bn_ctx);
    FUNC1(bn_ctx);
    return ret;
}