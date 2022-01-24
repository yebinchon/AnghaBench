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
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  AppendPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  first_partial_path ; 
 int /*<<< orphan*/  limit_tuples ; 
 int /*<<< orphan*/  partitioned_rels ; 
 int /*<<< orphan*/  subpaths ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const AppendPath *node)
{
	FUNC3("APPENDPATH");

	FUNC4(str, (const Path *) node);

	FUNC2(partitioned_rels);
	FUNC2(subpaths);
	FUNC1(first_partial_path);
	FUNC0(limit_tuples, "%.0f");
}