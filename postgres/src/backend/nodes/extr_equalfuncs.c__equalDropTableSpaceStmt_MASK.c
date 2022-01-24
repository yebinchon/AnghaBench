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
typedef  int /*<<< orphan*/  DropTableSpaceStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  missing_ok ; 
 int /*<<< orphan*/  tablespacename ; 

__attribute__((used)) static bool
FUNC2(const DropTableSpaceStmt *a, const DropTableSpaceStmt *b)
{
	FUNC1(tablespacename);
	FUNC0(missing_ok);

	return true;
}