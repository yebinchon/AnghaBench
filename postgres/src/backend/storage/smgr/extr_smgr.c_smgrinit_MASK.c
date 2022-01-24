#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* smgr_init ) () ;} ;

/* Variables and functions */
 int NSmgr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smgrshutdown ; 
 TYPE_1__* smgrsw ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
	int			i;

	for (i = 0; i < NSmgr; i++)
	{
		if (smgrsw[i].smgr_init)
			smgrsw[i].smgr_init();
	}

	/* register the shutdown proc */
	FUNC0(smgrshutdown, 0);
}