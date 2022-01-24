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
 int /*<<< orphan*/  template_private_test ; 
 int /*<<< orphan*/  template_public_test ; 
 int /*<<< orphan*/  template_static_fail_test ; 
 int /*<<< orphan*/  template_static_params_test ; 

int FUNC2(void)
{
    FUNC1(template_public_test);
    FUNC1(template_private_test);
    FUNC0(template_static_params_test, 2);
    FUNC0(template_static_fail_test, 2);
    return 1;
}