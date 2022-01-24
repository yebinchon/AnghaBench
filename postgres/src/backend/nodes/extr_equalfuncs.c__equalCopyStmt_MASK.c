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
typedef  int /*<<< orphan*/  CopyStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  attlist ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  is_from ; 
 int /*<<< orphan*/  is_program ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  query ; 
 int /*<<< orphan*/  relation ; 
 int /*<<< orphan*/  whereClause ; 

__attribute__((used)) static bool
FUNC3(const CopyStmt *a, const CopyStmt *b)
{
	FUNC0(relation);
	FUNC0(query);
	FUNC0(attlist);
	FUNC1(is_from);
	FUNC1(is_program);
	FUNC2(filename);
	FUNC0(options);
	FUNC0(whereClause);

	return true;
}