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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  sm2_crypt_test ; 
 int /*<<< orphan*/  sm2_sig_test ; 

int FUNC2(void)
{
#ifdef OPENSSL_NO_SM2
    TEST_note("SM2 is disabled.");
#else
    FUNC0(sm2_crypt_test);
    FUNC0(sm2_sig_test);
#endif
    return 1;
}