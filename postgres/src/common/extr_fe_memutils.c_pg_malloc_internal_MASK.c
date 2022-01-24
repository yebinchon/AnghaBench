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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int MCXT_ALLOC_NO_OOM ; 
 int MCXT_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static inline void *
FUNC5(size_t size, int flags)
{
	void	   *tmp;

	/* Avoid unportable behavior of malloc(0) */
	if (size == 0)
		size = 1;
	tmp = FUNC4(size);
	if (tmp == NULL)
	{
		if ((flags & MCXT_ALLOC_NO_OOM) == 0)
		{
			FUNC3(stderr, "%s", FUNC1("out of memory\n"));
			FUNC2(EXIT_FAILURE);
		}
		return NULL;
	}

	if ((flags & MCXT_ALLOC_ZERO) != 0)
		FUNC0(tmp, 0, size);
	return tmp;
}