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
 int /*<<< orphan*/  FUNC1 () ; 
 int* OPENSSL_ia32cap_P ; 
 int /*<<< orphan*/  sanity_check_rdrand_bytes ; 
 int /*<<< orphan*/  sanity_check_rdseed_bytes ; 

int FUNC2(void)
{
    FUNC1();

    int have_rdseed = (OPENSSL_ia32cap_P[2] & (1 << 18)) != 0;
    int have_rdrand = (OPENSSL_ia32cap_P[1] & (1 << (62 - 32))) != 0;

    if (have_rdrand) {
        FUNC0(sanity_check_rdrand_bytes);
    }

    if (have_rdseed) {
        FUNC0(sanity_check_rdseed_bytes);
    }

    return 1;
}