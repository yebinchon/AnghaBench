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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bad_f ; 
 int /*<<< orphan*/  req_f ; 
 int /*<<< orphan*/  roots_f ; 
 int /*<<< orphan*/  test_alt_chains_cert_forgery ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  test_req_sm2_id ; 
 int /*<<< orphan*/  test_sm2_id ; 
 int /*<<< orphan*/  test_store_ctx ; 
 int /*<<< orphan*/  untrusted_f ; 

int FUNC3(void)
{
    if (!FUNC1(roots_f = FUNC2(0))
            || !FUNC1(untrusted_f = FUNC2(1))
            || !FUNC1(bad_f = FUNC2(2))
            || !FUNC1(req_f = FUNC2(3)))
        return 0;

    FUNC0(test_alt_chains_cert_forgery);
    FUNC0(test_store_ctx);
#ifndef OPENSSL_NO_SM2
    FUNC0(test_sm2_id);
    FUNC0(test_req_sm2_id);
#endif
    return 1;
}