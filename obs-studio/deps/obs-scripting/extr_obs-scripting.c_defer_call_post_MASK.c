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
struct defer_call {void* cb; int /*<<< orphan*/  call; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  defer_call_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct defer_call*,int) ; 
 int /*<<< orphan*/  defer_call_exit ; 
 int /*<<< orphan*/  defer_call_mutex ; 
 int /*<<< orphan*/  defer_call_queue ; 
 int /*<<< orphan*/  defer_call_semaphore ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(defer_call_cb call, void *cb)
{
	struct defer_call info;
	info.call = call;
	info.cb = cb;

	FUNC2(&defer_call_mutex);
	if (!defer_call_exit)
		FUNC0(&defer_call_queue, &info, sizeof(info));
	FUNC3(&defer_call_mutex);

	FUNC1(defer_call_semaphore);
}