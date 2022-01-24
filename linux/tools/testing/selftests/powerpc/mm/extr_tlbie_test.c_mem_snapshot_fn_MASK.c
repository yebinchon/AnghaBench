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

/* Variables and functions */
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  corruption_found ; 
 int FUNC0 () ; 
 void* FUNC1 (size_t) ; 
 void* map1 ; 
 void* map2 ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,int) ; 
 int segv_wait ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void *FUNC5(void *arg)
{
	int page_size = FUNC0();
	size_t size = page_size;
	void *tmp = FUNC1(size);

	while (!corruption_found && !timeout) {
		/* Stop memory migration once corruption is found */
		segv_wait = 1;

		FUNC3(map1, size, PROT_READ);

		/*
		 * Load from the working alias (map1). Loading from map2
		 * also fails.
		 */
		FUNC2(tmp, map1, size);

		/*
		 * Stores must go via map2 which has write permissions, but
		 * the corrupted data tends to be seen in the snapshot buffer,
		 * so corruption does not appear to be introduced at the
		 * copy-back via map2 alias here.
		 */
		FUNC2(map2, tmp, size);
		/*
		 * Before releasing other threads, must ensure the copy
		 * back to
		 */
		asm volatile("sync" ::: "memory");
		FUNC3(map1, size, PROT_READ|PROT_WRITE);
		asm volatile("sync" ::: "memory");
		segv_wait = 0;

		FUNC4(1); /* This value makes a big difference */
	}

	return 0;
}