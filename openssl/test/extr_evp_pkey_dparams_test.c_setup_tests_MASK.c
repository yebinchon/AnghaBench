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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  params_bio_test ; 
 int /*<<< orphan*/  pkey_params ; 

int FUNC3(void)
{
#if defined(OPENSSL_NO_DH) && defined(OPENSSL_NO_DSA) && defined(OPENSSL_NO_EC)
    TEST_note("No DH/DSA/EC support");
#else
    FUNC0(params_bio_test, FUNC1(pkey_params));
#endif
    return 1;
}