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
typedef  int /*<<< orphan*/  DropStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  behavior ; 
 int /*<<< orphan*/  concurrent ; 
 int /*<<< orphan*/  missing_ok ; 
 int /*<<< orphan*/  objects ; 
 int /*<<< orphan*/  removeType ; 

__attribute__((used)) static bool
FUNC2(const DropStmt *a, const DropStmt *b)
{
	FUNC0(objects);
	FUNC1(removeType);
	FUNC1(behavior);
	FUNC1(missing_ok);
	FUNC1(concurrent);

	return true;
}