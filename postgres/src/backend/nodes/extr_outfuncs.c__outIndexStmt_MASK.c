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
typedef  int /*<<< orphan*/  IndexStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  accessMethod ; 
 int /*<<< orphan*/  concurrent ; 
 int /*<<< orphan*/  deferrable ; 
 int /*<<< orphan*/  excludeOpNames ; 
 int /*<<< orphan*/  idxcomment ; 
 int /*<<< orphan*/  idxname ; 
 int /*<<< orphan*/  if_not_exists ; 
 int /*<<< orphan*/  indexIncludingParams ; 
 int /*<<< orphan*/  indexOid ; 
 int /*<<< orphan*/  indexParams ; 
 int /*<<< orphan*/  initdeferred ; 
 int /*<<< orphan*/  isconstraint ; 
 int /*<<< orphan*/  oldNode ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  primary ; 
 int /*<<< orphan*/  relation ; 
 int /*<<< orphan*/  reset_default_tblspc ; 
 int /*<<< orphan*/  tableSpace ; 
 int /*<<< orphan*/  transformed ; 
 int /*<<< orphan*/  unique ; 
 int /*<<< orphan*/  whereClause ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const IndexStmt *node)
{
	FUNC2("INDEXSTMT");

	FUNC4(idxname);
	FUNC1(relation);
	FUNC4(accessMethod);
	FUNC4(tableSpace);
	FUNC1(indexParams);
	FUNC1(indexIncludingParams);
	FUNC1(options);
	FUNC1(whereClause);
	FUNC1(excludeOpNames);
	FUNC4(idxcomment);
	FUNC3(indexOid);
	FUNC3(oldNode);
	FUNC0(unique);
	FUNC0(primary);
	FUNC0(isconstraint);
	FUNC0(deferrable);
	FUNC0(initdeferred);
	FUNC0(transformed);
	FUNC0(concurrent);
	FUNC0(if_not_exists);
	FUNC0(reset_default_tblspc);
}