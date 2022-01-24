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
 int /*<<< orphan*/  X509_V_ERR_CERT_REVOKED ; 
 int /*<<< orphan*/  X509_V_FLAG_CRL_CHECK ; 
 int /*<<< orphan*/  X509_V_OK ; 
 int /*<<< orphan*/  kBasicCRL ; 
 int /*<<< orphan*/  kRevokedCRL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_leaf ; 
 int /*<<< orphan*/  test_root ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
    X509_CRL *basic_crl = FUNC0(kBasicCRL);
    X509_CRL *revoked_crl = FUNC0(kRevokedCRL);
    int r;

    r = FUNC2(basic_crl)
        && FUNC2(revoked_crl)
        && FUNC1(FUNC5(test_leaf, test_root,
                              FUNC4(basic_crl, NULL),
                              X509_V_FLAG_CRL_CHECK), X509_V_OK)
        && FUNC1(FUNC5(test_leaf, test_root,
                              FUNC4(basic_crl, revoked_crl),
                              X509_V_FLAG_CRL_CHECK), X509_V_ERR_CERT_REVOKED);
    FUNC3(basic_crl);
    FUNC3(revoked_crl);
    return r;
}