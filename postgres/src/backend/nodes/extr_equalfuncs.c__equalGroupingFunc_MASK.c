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
typedef  int /*<<< orphan*/  GroupingFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  agglevelsup ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  location ; 

__attribute__((used)) static bool
FUNC3(const GroupingFunc *a, const GroupingFunc *b)
{
	FUNC1(args);

	/*
	 * We must not compare the refs or cols field
	 */

	FUNC2(agglevelsup);
	FUNC0(location);

	return true;
}