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
typedef  int /*<<< orphan*/  MergePath ;
typedef  int /*<<< orphan*/  JoinPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  innersortkeys ; 
 int /*<<< orphan*/  materialize_inner ; 
 int /*<<< orphan*/  outersortkeys ; 
 int /*<<< orphan*/  path_mergeclauses ; 
 int /*<<< orphan*/  skip_mark_restore ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const MergePath *node)
{
	FUNC2("MERGEPATH");

	FUNC3(str, (const JoinPath *) node);

	FUNC1(path_mergeclauses);
	FUNC1(outersortkeys);
	FUNC1(innersortkeys);
	FUNC0(skip_mark_restore);
	FUNC0(materialize_inner);
}