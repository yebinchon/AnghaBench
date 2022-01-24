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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCRLTestLeaf ; 
 int /*<<< orphan*/  kCRLTestRoot ; 
 int /*<<< orphan*/  test_bad_issuer_crl ; 
 int /*<<< orphan*/  test_basic_crl ; 
 int /*<<< orphan*/  test_known_critical_crl ; 
 int /*<<< orphan*/  test_leaf ; 
 int /*<<< orphan*/  test_no_crl ; 
 int /*<<< orphan*/  test_reuse_crl ; 
 int /*<<< orphan*/  test_root ; 
 int /*<<< orphan*/  test_unknown_critical_crl ; 
 int /*<<< orphan*/  unknown_critical_crls ; 

int FUNC5(void)
{
    if (!FUNC3(test_root = FUNC4(kCRLTestRoot))
        || !FUNC3(test_leaf = FUNC4(kCRLTestLeaf)))
        return 0;

    FUNC1(test_no_crl);
    FUNC1(test_basic_crl);
    FUNC1(test_bad_issuer_crl);
    FUNC1(test_known_critical_crl);
    FUNC0(test_unknown_critical_crl, FUNC2(unknown_critical_crls));
    FUNC1(test_reuse_crl);
    return 1;
}