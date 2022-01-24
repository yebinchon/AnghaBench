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
typedef  int /*<<< orphan*/  GatherPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  num_workers ; 
 int /*<<< orphan*/  single_copy ; 
 int /*<<< orphan*/  subpath ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const GatherPath *node)
{
	FUNC3("GATHERPATH");

	FUNC4(str, (const Path *) node);

	FUNC2(subpath);
	FUNC0(single_copy);
	FUNC1(num_workers);
}