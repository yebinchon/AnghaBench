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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  kBasicCRL ; 
 int /*<<< orphan*/  kRevokedCRL ; 

__attribute__((used)) static int FUNC6(void)
{
    X509_CRL *reused_crl = FUNC1(kBasicCRL);
    char *p;
    BIO *b = FUNC5(kRevokedCRL, &p);

    reused_crl = FUNC3(b, &reused_crl, NULL, NULL);

    FUNC2(p);
    FUNC0(b);
    FUNC4(reused_crl);
    return 1;
}