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
 int /*<<< orphan*/  default_table ; 
 scalar_t__ param_table ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int FUNC2(void)
{
    int num = FUNC0(default_table);
    if (param_table)
        num += FUNC1(param_table);
    return num;
}