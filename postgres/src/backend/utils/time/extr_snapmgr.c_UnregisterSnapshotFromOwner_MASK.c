#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ regd_count; scalar_t__ active_count; int /*<<< orphan*/  ph_node; } ;
typedef  TYPE_1__* Snapshot ;
typedef  int /*<<< orphan*/  ResourceOwner ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RegisteredSnapshots ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(Snapshot snapshot, ResourceOwner owner)
{
	if (snapshot == NULL)
		return;

	FUNC0(snapshot->regd_count > 0);
	FUNC0(!FUNC4(&RegisteredSnapshots));

	FUNC2(owner, snapshot);

	snapshot->regd_count--;
	if (snapshot->regd_count == 0)
		FUNC5(&RegisteredSnapshots, &snapshot->ph_node);

	if (snapshot->regd_count == 0 && snapshot->active_count == 0)
	{
		FUNC1(snapshot);
		FUNC3();
	}
}