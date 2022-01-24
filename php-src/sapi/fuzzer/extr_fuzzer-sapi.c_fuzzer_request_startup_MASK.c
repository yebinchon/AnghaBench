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
typedef  int /*<<< orphan*/  SIGG ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 

int FUNC2()
{
	if (FUNC1() == FAILURE) {
		FUNC0();
		return FAILURE;
	}

#ifdef ZEND_SIGNALS
	/* Some signal handlers will be overriden,
	 * don't complain about them during shutdown. */
	SIGG(check) = 0;
#endif

	return SUCCESS;
}