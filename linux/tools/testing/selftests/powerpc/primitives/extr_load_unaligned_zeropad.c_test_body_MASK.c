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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAP_ANONYMOUS ; 
 unsigned long* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int FUNC1 (unsigned long*,unsigned long) ; 
 int FUNC2 () ; 
 unsigned long* mem_region ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 unsigned long* FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int page_size ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(void)
{
	unsigned long i;

	page_size = FUNC2();
	mem_region = FUNC4(NULL, page_size * 2, PROT_READ|PROT_WRITE,
		MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);

	FUNC0(mem_region == MAP_FAILED);

	for (i = 0; i < page_size; i++)
		mem_region[i] = i;

	FUNC3(mem_region+page_size, 0, page_size);

	FUNC5();

	for (i = 0; i < page_size; i++)
		FUNC0(FUNC1(mem_region+i, i));

	return 0;
}