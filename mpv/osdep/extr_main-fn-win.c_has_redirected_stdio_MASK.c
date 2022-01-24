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
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(void)
{
    return FUNC1(FUNC0(STD_INPUT_HANDLE)) ||
           FUNC1(FUNC0(STD_OUTPUT_HANDLE)) ||
           FUNC1(FUNC0(STD_ERROR_HANDLE));
}