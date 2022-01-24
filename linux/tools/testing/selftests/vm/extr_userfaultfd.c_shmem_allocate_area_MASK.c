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
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int nr_pages ; 
 int page_size ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(void **alloc_area)
{
	*alloc_area = FUNC1(NULL, nr_pages * page_size, PROT_READ | PROT_WRITE,
			   MAP_ANONYMOUS | MAP_SHARED, -1, 0);
	if (*alloc_area == MAP_FAILED) {
		FUNC0(stderr, "shared memory mmap failed\n");
		*alloc_area = NULL;
	}
}