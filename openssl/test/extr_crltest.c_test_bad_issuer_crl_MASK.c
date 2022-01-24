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
typedef  int /*<<< orphan*/  X509_CRL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_V_ERR_UNABLE_TO_GET_CRL ; 
 int /*<<< orphan*/  X509_V_FLAG_CRL_CHECK ; 
 int /*<<< orphan*/  kBadIssuerCRL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_leaf ; 
 int /*<<< orphan*/  test_root ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
    X509_CRL *bad_issuer_crl = FUNC0(kBadIssuerCRL);
    int r;

    r = FUNC2(bad_issuer_crl)
        && FUNC1(FUNC5(test_leaf, test_root,
                              FUNC4(bad_issuer_crl, NULL),
                              X509_V_FLAG_CRL_CHECK),
                       X509_V_ERR_UNABLE_TO_GET_CRL);
    FUNC3(bad_issuer_crl);
    return r;
}