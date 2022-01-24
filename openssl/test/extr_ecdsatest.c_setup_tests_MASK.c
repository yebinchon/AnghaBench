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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int crv_len ; 
 int /*<<< orphan*/ * curves ; 
 int /*<<< orphan*/  ecdsa_cavs_kats ; 
 int /*<<< orphan*/  test_builtin ; 
 int /*<<< orphan*/  x9_62_tests ; 

int FUNC7(void)
{
#ifdef OPENSSL_NO_EC
    TEST_note("Elliptic curves are disabled.");
#else
    /* get a list of all internal curves */
    crv_len = FUNC1(NULL, 0);
    if (!FUNC5(curves = FUNC2(sizeof(*curves) * crv_len))
        || !FUNC6(FUNC1(curves, crv_len)))
        return 0;
    FUNC0(test_builtin, crv_len);
    FUNC0(x9_62_tests, FUNC3(ecdsa_cavs_kats));
#endif
    return 1;
}