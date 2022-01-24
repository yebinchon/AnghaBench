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
typedef  int /*<<< orphan*/  Gather ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  initParam ; 
 int /*<<< orphan*/  invisible ; 
 int /*<<< orphan*/  num_workers ; 
 int /*<<< orphan*/  rescan_param ; 
 int /*<<< orphan*/  single_copy ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const Gather *node)
{
	FUNC3("GATHER");

	FUNC4(str, (const Plan *) node);

	FUNC2(num_workers);
	FUNC2(rescan_param);
	FUNC1(single_copy);
	FUNC1(invisible);
	FUNC0(initParam);
}