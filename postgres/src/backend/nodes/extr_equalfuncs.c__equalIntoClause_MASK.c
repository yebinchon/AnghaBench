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
typedef  int /*<<< orphan*/  IntoClause ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  accessMethod ; 
 int /*<<< orphan*/  colNames ; 
 int /*<<< orphan*/  onCommit ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  rel ; 
 int /*<<< orphan*/  skipData ; 
 int /*<<< orphan*/  tableSpaceName ; 
 int /*<<< orphan*/  viewQuery ; 

__attribute__((used)) static bool
FUNC3(const IntoClause *a, const IntoClause *b)
{
	FUNC0(rel);
	FUNC0(colNames);
	FUNC2(accessMethod);
	FUNC0(options);
	FUNC1(onCommit);
	FUNC2(tableSpaceName);
	FUNC0(viewQuery);
	FUNC1(skipData);

	return true;
}