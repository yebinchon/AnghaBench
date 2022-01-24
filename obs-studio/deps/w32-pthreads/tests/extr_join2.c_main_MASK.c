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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  func ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**) ; 

int
FUNC3(int argc, char * argv[])
{
	pthread_t id[4];
	int i;
	void* result = (void*)-1;

	/* Create a few threads and then exit. */
	for (i = 0; i < 4; i++)
	  {
	    FUNC0(FUNC1(&id[i], NULL, func, (void *)(size_t)i) == 0);
	  }

	for (i = 0; i < 4; i++)
	  {
	    FUNC0(FUNC2(id[i], &result) == 0);
	    FUNC0((int)(size_t)result == i);
	  }

	/* Success. */
	return 0;
}