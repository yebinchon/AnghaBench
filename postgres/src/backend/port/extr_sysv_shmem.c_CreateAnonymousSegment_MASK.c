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
typedef  int Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 scalar_t__ HUGE_PAGES_ON ; 
 scalar_t__ HUGE_PAGES_TRY ; 
 void* MAP_FAILED ; 
 int PG_MMAP_FLAGS ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int errno ; 
 scalar_t__ huge_pages ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC7(Size *size)
{
	Size		allocsize = *size;
	void	   *ptr = MAP_FAILED;
	int			mmap_errno = 0;

#ifndef MAP_HUGETLB
	/* PGSharedMemoryCreate should have dealt with this case */
	FUNC0(huge_pages != HUGE_PAGES_ON);
#else
	if (huge_pages == HUGE_PAGES_ON || huge_pages == HUGE_PAGES_TRY)
	{
		/*
		 * Round up the request size to a suitable large value.
		 */
		Size		hugepagesize;
		int			mmap_flags;

		GetHugePageSize(&hugepagesize, &mmap_flags);

		if (allocsize % hugepagesize != 0)
			allocsize += hugepagesize - (allocsize % hugepagesize);

		ptr = mmap(NULL, allocsize, PROT_READ | PROT_WRITE,
				   PG_MMAP_FLAGS | mmap_flags, -1, 0);
		mmap_errno = errno;
		if (huge_pages == HUGE_PAGES_TRY && ptr == MAP_FAILED)
			elog(DEBUG1, "mmap(%zu) with MAP_HUGETLB failed, huge pages disabled: %m",
				 allocsize);
	}
#endif

	if (ptr == MAP_FAILED && huge_pages != HUGE_PAGES_ON)
	{
		/*
		 * Use the original size, not the rounded-up value, when falling back
		 * to non-huge pages.
		 */
		allocsize = *size;
		ptr = FUNC6(NULL, allocsize, PROT_READ | PROT_WRITE,
				   PG_MMAP_FLAGS, -1, 0);
		mmap_errno = errno;
	}

	if (ptr == MAP_FAILED)
	{
		errno = mmap_errno;
		FUNC3(FATAL,
				(FUNC5("could not map anonymous shared memory: %m"),
				 (mmap_errno == ENOMEM) ?
				 FUNC4("This error usually means that PostgreSQL's request "
						 "for a shared memory segment exceeded available memory, "
						 "swap space, or huge pages. To reduce the request size "
						 "(currently %zu bytes), reduce PostgreSQL's shared "
						 "memory usage, perhaps by reducing shared_buffers or "
						 "max_connections.",
						 *size) : 0));
	}

	*size = allocsize;
	return ptr;
}