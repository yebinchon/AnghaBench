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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ app_methods ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  standard_methods ; 

int FUNC2(void)
{
    int num = FUNC0(standard_methods);
    if (app_methods)
        num += FUNC1(app_methods);
    return num;
}