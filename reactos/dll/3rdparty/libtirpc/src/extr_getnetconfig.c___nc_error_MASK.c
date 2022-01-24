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
typedef  int thread_key_t ;
typedef  int /*<<< orphan*/  mutex_t ;

/* Variables and functions */
 int TLS_OUT_OF_INDEXES ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,void*) ; 

__attribute__((used)) static int *
FUNC7()
{
	extern mutex_t nc_lock;
	extern thread_key_t nc_key;
	static int nc_error = 0;
	int error, *nc_addr;

	/*
	 * Use the static `nc_error' if we are the main thread
	 * (including non-threaded programs), or if an allocation
	 * fails.
	 */
	if (nc_key == -1) {
		error = 0;
		FUNC3(&nc_lock);
		if (nc_key == -1)
			error = nc_key = FUNC0();	//thr_keycreate(&nc_key, free);
		FUNC4(&nc_lock);
		if (error == TLS_OUT_OF_INDEXES)
			return (&nc_error);
	}
	if ((nc_addr = (int *)FUNC5(nc_key)) == NULL) {
		nc_addr = (int *)FUNC2(sizeof (int *));
		if (FUNC6(nc_key, (void *) nc_addr) == 0) {
			if (nc_addr)
				FUNC1(nc_addr);
			return (&nc_error);
		}
		*nc_addr = 0;
	}
	return (nc_addr);
}