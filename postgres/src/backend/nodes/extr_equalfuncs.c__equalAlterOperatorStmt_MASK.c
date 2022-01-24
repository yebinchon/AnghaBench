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
typedef  int /*<<< orphan*/  AlterOperatorStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opername ; 
 int /*<<< orphan*/  options ; 

__attribute__((used)) static bool
FUNC1(const AlterOperatorStmt *a, const AlterOperatorStmt *b)
{
	FUNC0(opername);
	FUNC0(options);

	return true;
}