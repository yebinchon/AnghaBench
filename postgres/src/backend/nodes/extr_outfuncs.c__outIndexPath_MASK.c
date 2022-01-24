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
typedef  int /*<<< orphan*/  IndexPath ;

/* Variables and functions */
 int /*<<< orphan*/  ScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  indexclauses ; 
 int /*<<< orphan*/  indexinfo ; 
 int /*<<< orphan*/  indexorderbycols ; 
 int /*<<< orphan*/  indexorderbys ; 
 int /*<<< orphan*/  indexscandir ; 
 int /*<<< orphan*/  indexselectivity ; 
 int /*<<< orphan*/  indextotalcost ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const IndexPath *node)
{
	FUNC3("INDEXPATH");

	FUNC4(str, (const Path *) node);

	FUNC2(indexinfo);
	FUNC2(indexclauses);
	FUNC2(indexorderbys);
	FUNC2(indexorderbycols);
	FUNC0(indexscandir, ScanDirection);
	FUNC1(indextotalcost, "%.2f");
	FUNC1(indexselectivity, "%.4f");
}