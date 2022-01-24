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
typedef  int /*<<< orphan*/  SubLink ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  SubLinkType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  operName ; 
 int /*<<< orphan*/  subLinkId ; 
 int /*<<< orphan*/  subLinkType ; 
 int /*<<< orphan*/  subselect ; 
 int /*<<< orphan*/  testexpr ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const SubLink *node)
{
	FUNC4("SUBLINK");

	FUNC0(subLinkType, SubLinkType);
	FUNC1(subLinkId);
	FUNC3(testexpr);
	FUNC3(operName);
	FUNC3(subselect);
	FUNC2(location);
}