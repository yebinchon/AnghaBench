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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Append ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  appendplans ; 
 int /*<<< orphan*/  first_partial_plan ; 
 int /*<<< orphan*/  part_prune_info ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const Append *node)
{
	FUNC2("APPEND");

	FUNC3(str, (const Plan *) node);

	FUNC1(appendplans);
	FUNC0(first_partial_plan);
	FUNC1(part_prune_info);
}