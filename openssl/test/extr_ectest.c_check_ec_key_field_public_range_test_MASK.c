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
struct TYPE_2__ {int /*<<< orphan*/  nid; } ;
typedef  int /*<<< orphan*/  const EC_POINT ;
typedef  int /*<<< orphan*/  const EC_METHOD ;
typedef  int /*<<< orphan*/  const EC_KEY ;
typedef  int /*<<< orphan*/  const EC_GROUP ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int NID_X9_62_characteristic_two_field ; 
 int NID_X9_62_prime_field ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_1__* curves ; 

__attribute__((used)) static int FUNC20(int id)
{
    int ret = 0, type = 0;
    const EC_POINT *pub = NULL;
    const EC_GROUP *group = NULL;
    const EC_METHOD *meth = NULL;
    const BIGNUM *field = NULL;
    BIGNUM *x = NULL, *y = NULL;
    EC_KEY *key = NULL;

    if (!FUNC18(x = FUNC3())
            || !FUNC18(y = FUNC3())
            || !FUNC18(key = FUNC11(curves[id].nid))
            || !FUNC18(group = FUNC9(key))
            || !FUNC18(meth = FUNC5(group))
            || !FUNC18(field = FUNC4(group))
            || !FUNC16(FUNC8(key), 0)
            || !FUNC16(FUNC6(key), 0)
            || !FUNC18(pub = FUNC10(key))
            || !FUNC16(FUNC14(group, pub, x, y,
                                                            NULL), 0))
        goto err;

    /*
     * Make the public point out of range by adding the field (which will still
     * be the same point on the curve). The add is different for char2 fields.
     */
    type = FUNC13(meth);
#ifndef OPENSSL_NO_EC2M
    if (type == NID_X9_62_characteristic_two_field) {
        /* test for binary curves */
        if (!FUNC19(FUNC0(x, x, field)))
            goto err;
    } else
#endif
    if (type == NID_X9_62_prime_field) {
        /* test for prime curves */
        if (!FUNC19(FUNC1(x, x, field)))
            goto err;
    } else {
        /* this should never happen */
        FUNC15("Unsupported EC_METHOD field_type");
        goto err;
    }
    if (!FUNC17(FUNC12(key, x, y), 0))
        goto err;

    ret = 1;
err:
    FUNC2(x);
    FUNC2(y);
    FUNC7(key);
    return ret;
}