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
typedef  int /*<<< orphan*/  IndexStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static bool
FUNC3(const IndexStmt *a, const IndexStmt *b)
{
	FUNC2(idxname);
	FUNC0(relation);
	FUNC2(accessMethod);
	FUNC2(tableSpace);
	FUNC0(indexParams);
	FUNC0(indexIncludingParams);
	FUNC0(options);
	FUNC0(whereClause);
	FUNC0(excludeOpNames);
	FUNC2(idxcomment);
	FUNC1(indexOid);
	FUNC1(oldNode);
	FUNC1(unique);
	FUNC1(primary);
	FUNC1(isconstraint);
	FUNC1(deferrable);
	FUNC1(initdeferred);
	FUNC1(transformed);
	FUNC1(concurrent);
	FUNC1(if_not_exists);
	FUNC1(reset_default_tblspc);

	return true;
}