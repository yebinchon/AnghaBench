#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ snapshot; int /*<<< orphan*/  iscan; int /*<<< orphan*/  irel; int /*<<< orphan*/ * slot; } ;
typedef  TYPE_1__* SysScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(SysScanDesc sysscan)
{
	if (sysscan->slot)
	{
		FUNC1(sysscan->slot);
		sysscan->slot = NULL;
	}

	FUNC0(sysscan->irel);
	FUNC3(sysscan->iscan);
	if (sysscan->snapshot)
		FUNC2(sysscan->snapshot);
	FUNC4(sysscan);
}