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
typedef  int /*<<< orphan*/  AlterOpFamilyStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amname ; 
 int /*<<< orphan*/  isDrop ; 
 int /*<<< orphan*/  items ; 
 int /*<<< orphan*/  opfamilyname ; 

__attribute__((used)) static bool
FUNC3(const AlterOpFamilyStmt *a, const AlterOpFamilyStmt *b)
{
	FUNC0(opfamilyname);
	FUNC2(amname);
	FUNC1(isDrop);
	FUNC0(items);

	return true;
}