#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int warning_count; int error_count; struct TYPE_4__* error_messages; struct TYPE_4__* message; struct TYPE_4__* warning_messages; } ;
typedef  TYPE_1__ timelib_error_container ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(timelib_error_container *errors)
{
	int i;

	for (i = 0; i < errors->warning_count; i++) {
		FUNC0(errors->warning_messages[i].message);
	}
	FUNC0(errors->warning_messages);
	for (i = 0; i < errors->error_count; i++) {
		FUNC0(errors->error_messages[i].message);
	}
	FUNC0(errors->error_messages);
	FUNC0(errors);
}