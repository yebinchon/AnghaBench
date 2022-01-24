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
struct TYPE_4__ {int rd_refcnt; } ;
typedef  TYPE_1__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC3(Relation rel)
{
	FUNC1(CurrentResourceOwner);
	rel->rd_refcnt += 1;
	if (!FUNC0())
		FUNC2(CurrentResourceOwner, rel);
}