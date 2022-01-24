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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NID_X9_62_prime256v1 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  kP256DefaultResult ; 
 int /*<<< orphan*/  num_repeats ; 
 scalar_t__ print_mode ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(void)
{
    EC_GROUP *group = NULL;
    EC_POINT *point = NULL;
    BIGNUM *result = NULL, *expected_result = NULL;
    int ret = 0;

    /*
     * We currently hard-code P-256, though adaptation to other curves.
     * would be straightforward.
     */
    if (!FUNC10(group = FUNC6(NID_X9_62_prime256v1))
            || !FUNC10(point = FUNC7(FUNC5(group),
                                              group))
            || !FUNC10(result = FUNC12(group, point, num_repeats)))
        return 0;

    if (print_mode) {
        FUNC3(bio_out, result);
        FUNC0(bio_out, "\n");
        ret = 1;
    } else {
        if (!FUNC11(FUNC2(&expected_result, kP256DefaultResult))
                || !FUNC10(expected_result)
                || !FUNC9(result, expected_result))
            goto err;
        ret = 1;
    }

err:
    FUNC4(group);
    FUNC8(point);
    FUNC1(result);
    FUNC1(expected_result);
    return ret;
}