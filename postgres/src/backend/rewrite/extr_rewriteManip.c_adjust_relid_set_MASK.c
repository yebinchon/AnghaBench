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
typedef  int /*<<< orphan*/  Relids ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Relids
FUNC4(Relids relids, int oldrelid, int newrelid)
{
	if (FUNC3(oldrelid, relids))
	{
		/* Ensure we have a modifiable copy */
		relids = FUNC1(relids);
		/* Remove old, add new */
		relids = FUNC2(relids, oldrelid);
		relids = FUNC0(relids, newrelid);
	}
	return relids;
}