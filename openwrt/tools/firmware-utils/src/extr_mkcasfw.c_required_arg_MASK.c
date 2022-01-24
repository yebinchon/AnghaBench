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
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 int ERR_FATAL ; 

int
FUNC1(char c, char *arg)
{
	if (arg == NULL || *arg != '-')
		return 0;

	FUNC0("option -%c requires an argument\n", c);
	return ERR_FATAL;
}