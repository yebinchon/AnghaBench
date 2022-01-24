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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(char **ptr)
{
	if (FUNC0(**ptr)) {
		return;
	}
	if (!FUNC1(*ptr, "nd", 2) || !FUNC1(*ptr, "rd", 2) ||!FUNC1(*ptr, "st", 2) || !FUNC1(*ptr, "th", 2)) {
		*ptr += 2;
	}
}