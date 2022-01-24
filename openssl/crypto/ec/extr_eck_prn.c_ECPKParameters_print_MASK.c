#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ point_conversion_form_t ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC6 () ; 
 int /*<<< orphan*/  EC_F_ECPKPARAMETERS_PRINT ; 
 int /*<<< orphan*/  const* FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC9 (int /*<<< orphan*/  const*) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*) ; 
 size_t FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC19 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int ERR_R_BIO_LIB ; 
 int ERR_R_EC_LIB ; 
 int ERR_R_MALLOC_FAILURE ; 
 int ERR_R_PASSED_NULL_PARAMETER ; 
 int NID_X9_62_characteristic_two_field ; 
 char const* FUNC22 (int) ; 
 scalar_t__ POINT_CONVERSION_COMPRESSED ; 
 scalar_t__ POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*,unsigned char const*,size_t,int) ; 

int FUNC24(BIO *bp, const EC_GROUP *x, int off)
{
    int ret = 0, reason = ERR_R_BIO_LIB;
    BN_CTX *ctx = NULL;
    const EC_POINT *point = NULL;
    BIGNUM *p = NULL, *a = NULL, *b = NULL, *gen = NULL;
    const BIGNUM *order = NULL, *cofactor = NULL;
    const unsigned char *seed;
    size_t seed_len = 0;

    static const char *gen_compressed = "Generator (compressed):";
    static const char *gen_uncompressed = "Generator (uncompressed):";
    static const char *gen_hybrid = "Generator (hybrid):";

    if (!x) {
        reason = ERR_R_PASSED_NULL_PARAMETER;
        goto err;
    }

    ctx = FUNC4();
    if (ctx == NULL) {
        reason = ERR_R_MALLOC_FAILURE;
        goto err;
    }

    if (FUNC11(x)) {
        /* the curve parameter are given by an asn1 OID */
        int nid;
        const char *nname;

        if (!FUNC1(bp, off, 128))
            goto err;

        nid = FUNC14(x);
        if (nid == 0)
            goto err;
        if (FUNC2(bp, "ASN1 OID: %s", FUNC22(nid)) <= 0)
            goto err;
        if (FUNC2(bp, "\n") <= 0)
            goto err;
        nname = FUNC20(nid);
        if (nname) {
            if (!FUNC1(bp, off, 128))
                goto err;
            if (FUNC2(bp, "NIST CURVE: %s\n", nname) <= 0)
                goto err;
        }
    } else {
        /* explicit parameters */
        int is_char_two = 0;
        point_conversion_form_t form;
        int tmp_nid = FUNC18(FUNC17(x));

        if (tmp_nid == NID_X9_62_characteristic_two_field)
            is_char_two = 1;

        if ((p = FUNC6()) == NULL || (a = FUNC6()) == NULL ||
            (b = FUNC6()) == NULL) {
            reason = ERR_R_MALLOC_FAILURE;
            goto err;
        }

        if (!FUNC13(x, p, a, b, ctx)) {
            reason = ERR_R_EC_LIB;
            goto err;
        }

        if ((point = FUNC8(x)) == NULL) {
            reason = ERR_R_EC_LIB;
            goto err;
        }
        order = FUNC9(x);
        cofactor = FUNC7(x);
        if (order == NULL) {
            reason = ERR_R_EC_LIB;
            goto err;
        }

        form = FUNC15(x);

        if ((gen = FUNC19(x, point, form, NULL, ctx)) == NULL) {
            reason = ERR_R_EC_LIB;
            goto err;
        }

        if ((seed = FUNC10(x)) != NULL)
            seed_len = FUNC16(x);

        if (!FUNC1(bp, off, 128))
            goto err;

        /* print the 'short name' of the field type */
        if (FUNC2(bp, "Field Type: %s\n", FUNC22(tmp_nid))
            <= 0)
            goto err;

        if (is_char_two) {
            /* print the 'short name' of the base type OID */
            int basis_type = FUNC12(x);
            if (basis_type == 0)
                goto err;

            if (!FUNC1(bp, off, 128))
                goto err;

            if (FUNC2(bp, "Basis Type: %s\n",
                           FUNC22(basis_type)) <= 0)
                goto err;

            /* print the polynomial */
            if ((p != NULL) && !FUNC0(bp, "Polynomial:", p, NULL,
                                              off))
                goto err;
        } else {
            if ((p != NULL) && !FUNC0(bp, "Prime:", p, NULL, off))
                goto err;
        }
        if ((a != NULL) && !FUNC0(bp, "A:   ", a, NULL, off))
            goto err;
        if ((b != NULL) && !FUNC0(bp, "B:   ", b, NULL, off))
            goto err;
        if (form == POINT_CONVERSION_COMPRESSED) {
            if ((gen != NULL) && !FUNC0(bp, gen_compressed, gen,
                                                NULL, off))
                goto err;
        } else if (form == POINT_CONVERSION_UNCOMPRESSED) {
            if ((gen != NULL) && !FUNC0(bp, gen_uncompressed, gen,
                                                NULL, off))
                goto err;
        } else {                /* form == POINT_CONVERSION_HYBRID */

            if ((gen != NULL) && !FUNC0(bp, gen_hybrid, gen,
                                                NULL, off))
                goto err;
        }
        if ((order != NULL) && !FUNC0(bp, "Order: ", order,
                                              NULL, off))
            goto err;
        if ((cofactor != NULL) && !FUNC0(bp, "Cofactor: ", cofactor,
                                                 NULL, off))
            goto err;
        if (seed && !FUNC23(bp, "Seed:", seed, seed_len, off))
            goto err;
    }
    ret = 1;
 err:
    if (!ret)
        FUNC21(EC_F_ECPKPARAMETERS_PRINT, reason);
    FUNC5(p);
    FUNC5(a);
    FUNC5(b);
    FUNC5(gen);
    FUNC3(ctx);
    return ret;
}