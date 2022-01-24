#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_7__* seed; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ X9_62_CURVE ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {scalar_t__ seed_len; scalar_t__ seed; } ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 TYPE_7__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int ASN1_STRING_FLAG_BITS_LEFT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  EC_F_EC_ASN1_GROUP2CURVE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 unsigned char* FUNC11 (size_t) ; 

__attribute__((used)) static int FUNC12(const EC_GROUP *group, X9_62_CURVE *curve)
{
    int ok = 0;
    BIGNUM *tmp_1 = NULL, *tmp_2 = NULL;
    unsigned char *a_buf = NULL, *b_buf = NULL;
    size_t len;

    if (!group || !curve || !curve->a || !curve->b)
        return 0;

    if ((tmp_1 = FUNC6()) == NULL || (tmp_2 = FUNC6()) == NULL) {
        FUNC9(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /* get a and b */
    if (!FUNC7(group, NULL, tmp_1, tmp_2, NULL)) {
        FUNC9(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_EC_LIB);
        goto err;
    }

    /*
     * Per SEC 1, the curve coefficients must be padded up to size. See C.2's
     * definition of Curve, C.1's definition of FieldElement, and 2.3.5's
     * definition of how to encode the field elements.
     */
    len = ((size_t)FUNC8(group) + 7) / 8;
    if ((a_buf = FUNC11(len)) == NULL
        || (b_buf = FUNC11(len)) == NULL) {
        FUNC9(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (FUNC4(tmp_1, a_buf, len) < 0
        || FUNC4(tmp_2, b_buf, len) < 0) {
        FUNC9(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_BN_LIB);
        goto err;
    }

    /* set a and b */
    if (!FUNC3(curve->a, a_buf, len)
        || !FUNC3(curve->b, b_buf, len)) {
        FUNC9(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_ASN1_LIB);
        goto err;
    }

    /* set the seed (optional) */
    if (group->seed) {
        if (!curve->seed)
            if ((curve->seed = FUNC1()) == NULL) {
                FUNC9(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        curve->seed->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
        curve->seed->flags |= ASN1_STRING_FLAG_BITS_LEFT;
        if (!FUNC2(curve->seed, group->seed,
                                 (int)group->seed_len)) {
            FUNC9(EC_F_EC_ASN1_GROUP2CURVE, ERR_R_ASN1_LIB);
            goto err;
        }
    } else {
        FUNC0(curve->seed);
        curve->seed = NULL;
    }

    ok = 1;

 err:
    FUNC10(a_buf);
    FUNC10(b_buf);
    FUNC5(tmp_1);
    FUNC5(tmp_2);
    return ok;
}