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
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mainThreadId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int parallel_init_done ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  shutdown_parallel_dump_utils ; 
 int /*<<< orphan*/  tls_index ; 

void
FUNC7(void)
{
#ifdef WIN32
	if (!parallel_init_done)
	{
		WSADATA		wsaData;
		int			err;

		/* Prepare for threaded operation */
		tls_index = TlsAlloc();
		mainThreadId = GetCurrentThreadId();

		/* Initialize socket access */
		err = WSAStartup(MAKEWORD(2, 2), &wsaData);
		if (err != 0)
		{
			pg_log_error("WSAStartup failed: %d", err);
			exit_nicely(1);
		}
		/* ... and arrange to shut it down at exit */
		on_exit_nicely(shutdown_parallel_dump_utils, NULL);
		parallel_init_done = true;
	}
#endif
}