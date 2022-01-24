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
typedef  int /*<<< orphan*/  CreateTableSpaceStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  owner ; 
 int /*<<< orphan*/  tablespacename ; 

__attribute__((used)) static bool
FUNC2(const CreateTableSpaceStmt *a, const CreateTableSpaceStmt *b)
{
	FUNC1(tablespacename);
	FUNC0(owner);
	FUNC1(location);
	FUNC0(options);

	return true;
}