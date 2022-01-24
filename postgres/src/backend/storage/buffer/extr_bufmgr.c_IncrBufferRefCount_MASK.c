#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  refcount; } ;
typedef  TYPE_1__ PrivateRefCountEntry ;
typedef  int Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/ * LocalRefCount ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6(Buffer buffer)
{
	FUNC0(FUNC2(buffer));
	FUNC4(CurrentResourceOwner);
	if (FUNC1(buffer))
		LocalRefCount[-buffer - 1]++;
	else
	{
		PrivateRefCountEntry *ref;

		ref = FUNC3(buffer, true);
		FUNC0(ref != NULL);
		ref->refcount++;
	}
	FUNC5(CurrentResourceOwner, buffer);
}