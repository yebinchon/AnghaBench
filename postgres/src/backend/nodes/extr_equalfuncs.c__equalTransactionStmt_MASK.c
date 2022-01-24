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
typedef  int /*<<< orphan*/  TransactionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  gid ; 
 int /*<<< orphan*/  kind ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  savepoint_name ; 

__attribute__((used)) static bool
FUNC3(const TransactionStmt *a, const TransactionStmt *b)
{
	FUNC1(kind);
	FUNC0(options);
	FUNC2(savepoint_name);
	FUNC2(gid);
	FUNC1(chain);

	return true;
}