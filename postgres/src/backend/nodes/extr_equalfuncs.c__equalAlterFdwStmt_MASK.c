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
typedef  int /*<<< orphan*/  AlterFdwStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdwname ; 
 int /*<<< orphan*/  func_options ; 
 int /*<<< orphan*/  options ; 

__attribute__((used)) static bool
FUNC2(const AlterFdwStmt *a, const AlterFdwStmt *b)
{
	FUNC1(fdwname);
	FUNC0(func_options);
	FUNC0(options);

	return true;
}