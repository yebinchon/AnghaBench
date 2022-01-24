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
struct __test_metadata {scalar_t__ passed; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

void FUNC4(struct __test_metadata *_metadata,
			    pid_t tracer)
{
	if (tracer) {
		int status;
		/*
		 * Extract the exit code from the other process and
		 * adopt it for ourselves in case its asserts failed.
		 */
		FUNC0(0, FUNC2(tracer, SIGUSR1));
		FUNC0(tracer, FUNC3(tracer, &status, 0));
		if (FUNC1(status))
			_metadata->passed = 0;
	}
}