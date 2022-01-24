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
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 

void FUNC3(const zend_string *name) /* {{{ */
{
	if (FUNC2(name)) {
		FUNC1(E_COMPILE_ERROR,
			"Cannot use '%s' as class name as it is reserved", FUNC0(name));
	}
}