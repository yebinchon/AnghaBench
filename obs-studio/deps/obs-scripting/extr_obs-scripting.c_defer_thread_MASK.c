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
struct defer_call {int /*<<< orphan*/  cb; int /*<<< orphan*/  (* call ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct defer_call*,int) ; 
 scalar_t__ defer_call_exit ; 
 int /*<<< orphan*/  defer_call_mutex ; 
 int /*<<< orphan*/  defer_call_queue ; 
 int /*<<< orphan*/  defer_call_semaphore ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(void *unused)
{
	FUNC0(unused);

	while (FUNC2(defer_call_semaphore) == 0) {
		struct defer_call info;

		FUNC3(&defer_call_mutex);
		if (defer_call_exit) {
			FUNC4(&defer_call_mutex);
			return NULL;
		}

		FUNC1(&defer_call_queue, &info, sizeof(info));
		FUNC4(&defer_call_mutex);

		info.call(info.cb);
	}

	return NULL;
}