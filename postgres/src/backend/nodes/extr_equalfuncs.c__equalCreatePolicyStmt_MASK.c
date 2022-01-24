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
typedef  int /*<<< orphan*/  CreatePolicyStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmd_name ; 
 int /*<<< orphan*/  permissive ; 
 int /*<<< orphan*/  policy_name ; 
 int /*<<< orphan*/  qual ; 
 int /*<<< orphan*/  roles ; 
 int /*<<< orphan*/  table ; 
 int /*<<< orphan*/  with_check ; 

__attribute__((used)) static bool
FUNC3(const CreatePolicyStmt *a, const CreatePolicyStmt *b)
{
	FUNC2(policy_name);
	FUNC0(table);
	FUNC2(cmd_name);
	FUNC1(permissive);
	FUNC0(roles);
	FUNC0(qual);
	FUNC0(with_check);

	return true;
}