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
typedef  int /*<<< orphan*/  DRBG_SELFTEST_DATA ;

/* Variables and functions */
 int /*<<< orphan*/ * drbg_test ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(int i)
{
    DRBG_SELFTEST_DATA *td = &drbg_test[i];
    int rv = 0;

    if (FUNC0(td))
        goto err;
    rv = 1;

err:
    return rv;
}