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
typedef  int /*<<< orphan*/  WindowFunc ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aggfilter ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  winagg ; 
 int /*<<< orphan*/  wincollid ; 
 int /*<<< orphan*/  winfnoid ; 
 int /*<<< orphan*/  winref ; 
 int /*<<< orphan*/  winstar ; 
 int /*<<< orphan*/  wintype ; 

__attribute__((used)) static void
FUNC6(StringInfo str, const WindowFunc *node)
{
	FUNC3("WINDOWFUNC");

	FUNC4(winfnoid);
	FUNC4(wintype);
	FUNC4(wincollid);
	FUNC4(inputcollid);
	FUNC2(args);
	FUNC2(aggfilter);
	FUNC5(winref);
	FUNC0(winstar);
	FUNC0(winagg);
	FUNC1(location);
}