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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  endOffset ; 
 int /*<<< orphan*/  frameOptions ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  orderClause ; 
 int /*<<< orphan*/  partitionClause ; 
 int /*<<< orphan*/  refname ; 
 int /*<<< orphan*/  startOffset ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const WindowDef *node)
{
	FUNC3("WINDOWDEF");

	FUNC4(name);
	FUNC4(refname);
	FUNC2(partitionClause);
	FUNC2(orderClause);
	FUNC0(frameOptions);
	FUNC2(startOffset);
	FUNC2(endOffset);
	FUNC1(location);
}