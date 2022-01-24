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
typedef  int /*<<< orphan*/  CreateStatsStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  defnames ; 
 int /*<<< orphan*/  exprs ; 
 int /*<<< orphan*/  if_not_exists ; 
 int /*<<< orphan*/  relations ; 
 int /*<<< orphan*/  stat_types ; 
 int /*<<< orphan*/  stxcomment ; 

__attribute__((used)) static bool
FUNC3(const CreateStatsStmt *a, const CreateStatsStmt *b)
{
	FUNC0(defnames);
	FUNC0(stat_types);
	FUNC0(exprs);
	FUNC0(relations);
	FUNC2(stxcomment);
	FUNC1(if_not_exists);

	return true;
}