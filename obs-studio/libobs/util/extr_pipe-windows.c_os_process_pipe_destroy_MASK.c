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
struct TYPE_4__ {int /*<<< orphan*/  process; int /*<<< orphan*/  handle_err; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ os_process_pipe_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(os_process_pipe_t *pp)
{
	int ret = 0;

	if (pp) {
		DWORD code;

		FUNC0(pp->handle);
		FUNC0(pp->handle_err);

		FUNC2(pp->process, INFINITE);
		if (FUNC1(pp->process, &code))
			ret = (int)code;

		FUNC0(pp->process);
		FUNC3(pp);
	}

	return ret;
}