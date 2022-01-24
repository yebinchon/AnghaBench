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
typedef  int /*<<< orphan*/  CreateForeignServerStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdwname ; 
 int /*<<< orphan*/  if_not_exists ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  servername ; 
 int /*<<< orphan*/  servertype ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static bool
FUNC3(const CreateForeignServerStmt *a, const CreateForeignServerStmt *b)
{
	FUNC2(servername);
	FUNC2(servertype);
	FUNC2(version);
	FUNC2(fdwname);
	FUNC1(if_not_exists);
	FUNC0(options);

	return true;
}