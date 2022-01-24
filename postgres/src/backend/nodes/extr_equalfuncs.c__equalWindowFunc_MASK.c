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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static bool
FUNC3(const WindowFunc *a, const WindowFunc *b)
{
	FUNC2(winfnoid);
	FUNC2(wintype);
	FUNC2(wincollid);
	FUNC2(inputcollid);
	FUNC1(args);
	FUNC1(aggfilter);
	FUNC2(winref);
	FUNC2(winstar);
	FUNC2(winagg);
	FUNC0(location);

	return true;
}