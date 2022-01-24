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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 

int FUNC2(__attribute__((unused)) int argc,
		    __attribute__((unused)) char *argv[])
{
	int ret;

	ret = FUNC1();
	if (ret < 0)
		FUNC0("list imported devices");

	return ret;
}