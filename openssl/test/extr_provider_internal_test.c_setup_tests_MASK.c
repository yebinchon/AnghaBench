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
 int /*<<< orphan*/  test_builtin_provider ; 
 int /*<<< orphan*/  test_configured_provider ; 
 int /*<<< orphan*/  test_loaded_provider ; 

int FUNC1(void)
{
    FUNC0(test_builtin_provider);
#ifndef NO_PROVIDER_MODULE
    FUNC0(test_loaded_provider);
    FUNC0(test_configured_provider);
#endif
    return 1;
}