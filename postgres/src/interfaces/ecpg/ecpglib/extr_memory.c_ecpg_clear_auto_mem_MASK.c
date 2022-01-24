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
struct auto_mem {struct auto_mem* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auto_mem*) ; 
 struct auto_mem* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	struct auto_mem *am = FUNC1();

	/* only free our own structure */
	if (am)
	{
		do
		{
			struct auto_mem *act = am;

			am = am->next;
			FUNC0(act);
		} while (am);
		FUNC2(NULL);
	}
}