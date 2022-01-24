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
typedef  int /*<<< orphan*/  JoinPath ;
typedef  int /*<<< orphan*/  HashPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  inner_rows_total ; 
 int /*<<< orphan*/  num_batches ; 
 int /*<<< orphan*/  path_hashclauses ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const HashPath *node)
{
	FUNC3("HASHPATH");

	FUNC4(str, (const JoinPath *) node);

	FUNC2(path_hashclauses);
	FUNC1(num_batches);
	FUNC0(inner_rows_total, "%.0f");
}