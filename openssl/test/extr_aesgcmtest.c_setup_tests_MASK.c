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
 int /*<<< orphan*/  badkeylen_test ; 
 int /*<<< orphan*/  ivgen_test ; 
 int /*<<< orphan*/  kat_test ; 

int FUNC1(void)
{
    FUNC0(kat_test);
    FUNC0(badkeylen_test);
#ifdef FIPS_MODE
    ADD_TEST(ivgen_test);
#endif /* FIPS_MODE */
    return 1;
}