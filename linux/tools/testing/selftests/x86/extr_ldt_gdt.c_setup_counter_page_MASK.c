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
 int MAP_32BIT ; 
 int MAP_ANONYMOUS ; 
 unsigned int* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 unsigned int* counter_page ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int* FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int *page = FUNC1(NULL, 4096, PROT_READ | PROT_WRITE,
			 MAP_ANONYMOUS | MAP_PRIVATE | MAP_32BIT, -1, 0);
	if (page == MAP_FAILED)
		FUNC0(1, "mmap");

	for (int i = 0; i < 1024; i++)
		page[i] = i;
	counter_page = page;
}