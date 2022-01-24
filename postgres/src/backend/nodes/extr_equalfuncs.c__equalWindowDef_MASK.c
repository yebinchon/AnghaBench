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
typedef  int /*<<< orphan*/  WindowDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  endOffset ; 
 int /*<<< orphan*/  frameOptions ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  orderClause ; 
 int /*<<< orphan*/  partitionClause ; 
 int /*<<< orphan*/  refname ; 
 int /*<<< orphan*/  startOffset ; 

__attribute__((used)) static bool
FUNC4(const WindowDef *a, const WindowDef *b)
{
	FUNC3(name);
	FUNC3(refname);
	FUNC1(partitionClause);
	FUNC1(orderClause);
	FUNC2(frameOptions);
	FUNC1(startOffset);
	FUNC1(endOffset);
	FUNC0(location);

	return true;
}