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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 scalar_t__ __unbuffered_tpr_x ; 
 scalar_t__ __unbuffered_tpr_y ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_process_reader ; 
 int /*<<< orphan*/  thread_update ; 

int FUNC4(int argc, char *argv[])
{
	pthread_t tu;
	pthread_t tpr;

	if (FUNC2(&tu, NULL, thread_update, NULL))
		FUNC0();
	if (FUNC2(&tpr, NULL, thread_process_reader, NULL))
		FUNC0();
	if (FUNC3(tu, NULL))
		FUNC0();
	if (FUNC3(tpr, NULL))
		FUNC0();
	FUNC1(__unbuffered_tpr_y != 0 || __unbuffered_tpr_x != 0);

#ifdef ASSERT_END
	assert(0);
#endif

	return 0;
}