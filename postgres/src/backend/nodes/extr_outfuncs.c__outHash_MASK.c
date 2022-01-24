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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  hashkeys ; 
 int /*<<< orphan*/  rows_total ; 
 int /*<<< orphan*/  skewColumn ; 
 int /*<<< orphan*/  skewInherit ; 
 int /*<<< orphan*/  skewTable ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const Hash *node)
{
	FUNC4("HASH");

	FUNC6(str, (const Plan *) node);

	FUNC3(hashkeys);
	FUNC5(skewTable);
	FUNC2(skewColumn);
	FUNC0(skewInherit);
	FUNC1(rows_total, "%.0f");
}