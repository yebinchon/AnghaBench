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
typedef  int /*<<< orphan*/  CreateRoleStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  role ; 
 int /*<<< orphan*/  stmt_type ; 

__attribute__((used)) static bool
FUNC3(const CreateRoleStmt *a, const CreateRoleStmt *b)
{
	FUNC1(stmt_type);
	FUNC2(role);
	FUNC0(options);

	return true;
}