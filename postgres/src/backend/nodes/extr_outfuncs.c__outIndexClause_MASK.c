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
typedef  int /*<<< orphan*/  IndexClause ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  indexcol ; 
 int /*<<< orphan*/  indexcols ; 
 int /*<<< orphan*/  indexquals ; 
 int /*<<< orphan*/  lossy ; 
 int /*<<< orphan*/  rinfo ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const IndexClause *node)
{
	FUNC3("INDEXCLAUSE");

	FUNC2(rinfo);
	FUNC2(indexquals);
	FUNC0(lossy);
	FUNC1(indexcol);
	FUNC2(indexcols);
}