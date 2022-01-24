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
typedef  int /*<<< orphan*/  AlterEventTrigStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tgenabled ; 
 int /*<<< orphan*/  trigname ; 

__attribute__((used)) static bool
FUNC2(const AlterEventTrigStmt *a, const AlterEventTrigStmt *b)
{
	FUNC1(trigname);
	FUNC0(tgenabled);

	return true;
}