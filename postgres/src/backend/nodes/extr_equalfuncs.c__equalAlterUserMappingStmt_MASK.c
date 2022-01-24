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
typedef  int /*<<< orphan*/  AlterUserMappingStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  servername ; 
 int /*<<< orphan*/  user ; 

__attribute__((used)) static bool
FUNC2(const AlterUserMappingStmt *a, const AlterUserMappingStmt *b)
{
	FUNC0(user);
	FUNC1(servername);
	FUNC0(options);

	return true;
}