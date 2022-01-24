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
typedef  int /*<<< orphan*/  CreateTrigStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  columns ; 
 int /*<<< orphan*/  constrrel ; 
 int /*<<< orphan*/  deferrable ; 
 int /*<<< orphan*/  events ; 
 int /*<<< orphan*/  funcname ; 
 int /*<<< orphan*/  initdeferred ; 
 int /*<<< orphan*/  isconstraint ; 
 int /*<<< orphan*/  relation ; 
 int /*<<< orphan*/  row ; 
 int /*<<< orphan*/  timing ; 
 int /*<<< orphan*/  transitionRels ; 
 int /*<<< orphan*/  trigname ; 
 int /*<<< orphan*/  whenClause ; 

__attribute__((used)) static bool
FUNC3(const CreateTrigStmt *a, const CreateTrigStmt *b)
{
	FUNC2(trigname);
	FUNC0(relation);
	FUNC0(funcname);
	FUNC0(args);
	FUNC1(row);
	FUNC1(timing);
	FUNC1(events);
	FUNC0(columns);
	FUNC0(whenClause);
	FUNC1(isconstraint);
	FUNC0(transitionRels);
	FUNC1(deferrable);
	FUNC1(initdeferred);
	FUNC0(constrrel);

	return true;
}