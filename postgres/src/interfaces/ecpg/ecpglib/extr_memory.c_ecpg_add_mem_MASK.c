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
struct auto_mem {int /*<<< orphan*/  next; void* pointer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct auto_mem*) ; 

bool
FUNC3(void *ptr, int lineno)
{
	struct auto_mem *am = (struct auto_mem *) FUNC0(sizeof(struct auto_mem), lineno);

	if (!am)
		return false;

	am->pointer = ptr;
	am->next = FUNC1();
	FUNC2(am);
	return true;
}