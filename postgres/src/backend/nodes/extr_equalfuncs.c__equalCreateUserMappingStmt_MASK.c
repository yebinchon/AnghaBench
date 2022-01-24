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
typedef  int /*<<< orphan*/  CreateUserMappingStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  if_not_exists ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  servername ; 
 int /*<<< orphan*/  user ; 

__attribute__((used)) static bool
FUNC3(const CreateUserMappingStmt *a, const CreateUserMappingStmt *b)
{
	FUNC0(user);
	FUNC2(servername);
	FUNC1(if_not_exists);
	FUNC0(options);

	return true;
}