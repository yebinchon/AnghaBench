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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int*) ; 

void FUNC5(int *ptr, u16 pkey)
{
	int ptr_contents;

	FUNC0("disabling access to PKEY[%02d], doing read @ %p\n", pkey, ptr);
	FUNC3();
	FUNC2(pkey);
	ptr_contents = FUNC4(ptr);
	FUNC0("*ptr: %d\n", ptr_contents);
	FUNC1(pkey);
}