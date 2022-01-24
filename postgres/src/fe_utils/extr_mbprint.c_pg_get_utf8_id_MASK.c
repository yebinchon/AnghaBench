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
 int FUNC0 (char*) ; 

__attribute__((used)) static int
FUNC1(void)
{
	static int	utf8_id = -1;

	if (utf8_id < 0)
		utf8_id = FUNC0("utf8");
	return utf8_id;
}