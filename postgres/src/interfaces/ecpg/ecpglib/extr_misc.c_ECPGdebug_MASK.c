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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  debug_init_mutex ; 
 int /*<<< orphan*/ * debugstream ; 
 int ecpg_internal_regression_mode ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int simple_debug ; 

void
FUNC3(int n, FILE *dbgs)
{
#ifdef ENABLE_THREAD_SAFETY
	pthread_mutex_lock(&debug_init_mutex);
#endif

	if (n > 100)
	{
		ecpg_internal_regression_mode = true;
		simple_debug = n - 100;
	}
	else
		simple_debug = n;

	debugstream = dbgs;

	FUNC0("ECPGdebug: set to %d\n", simple_debug);

#ifdef ENABLE_THREAD_SAFETY
	pthread_mutex_unlock(&debug_init_mutex);
#endif
}