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
struct swlib_scan_arg {char const* name; struct switch_dev* head; int /*<<< orphan*/ * ptr; } ;
struct switch_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWITCH_CMD_GET_SWITCH ; 
 int /*<<< orphan*/  add_switch ; 
 int /*<<< orphan*/  refcount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct swlib_scan_arg*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

struct switch_dev *
FUNC3(const char *name)
{
	struct swlib_scan_arg arg;

	if (!refcount) {
		if (FUNC2() < 0)
			return NULL;
	};

	arg.head = NULL;
	arg.ptr = NULL;
	arg.name = name;
	FUNC0(SWITCH_CMD_GET_SWITCH, add_switch, NULL, &arg);

	if (!refcount)
		FUNC1();

	return arg.head;
}