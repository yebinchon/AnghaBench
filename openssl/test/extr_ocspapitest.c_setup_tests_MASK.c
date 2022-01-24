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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  certstr ; 
 int /*<<< orphan*/  privkeystr ; 
 int /*<<< orphan*/  test_access_description ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  test_ocsp_url_svcloc_new ; 
 int /*<<< orphan*/  test_resp_signer ; 

int FUNC4(void)
{
    if (!FUNC2(certstr = FUNC3(0))
        || !FUNC2(privkeystr = FUNC3(1)))
        return 0;
#ifndef OPENSSL_NO_OCSP
    FUNC1(test_resp_signer);
    FUNC0(test_access_description, 3);
    FUNC1(test_ocsp_url_svcloc_new);
#endif
    return 1;
}