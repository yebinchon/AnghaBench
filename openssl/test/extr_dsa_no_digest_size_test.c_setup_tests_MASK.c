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
 int /*<<< orphan*/  dsa_exact_size_test ; 
 int /*<<< orphan*/  dsa_large_digest_test ; 
 int /*<<< orphan*/  dsa_small_digest_test ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(void)
{
#ifndef OPENSSL_NO_DSA
    if (!FUNC1())
        return 0;

    FUNC0(dsa_exact_size_test);
    FUNC0(dsa_small_digest_test);
    FUNC0(dsa_large_digest_test);
#endif
    return 1;
}