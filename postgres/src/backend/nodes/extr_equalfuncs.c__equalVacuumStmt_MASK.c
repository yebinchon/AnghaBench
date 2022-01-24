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
typedef  int /*<<< orphan*/  VacuumStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  is_vacuumcmd ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  rels ; 

__attribute__((used)) static bool
FUNC2(const VacuumStmt *a, const VacuumStmt *b)
{
	FUNC0(options);
	FUNC0(rels);
	FUNC1(is_vacuumcmd);

	return true;
}