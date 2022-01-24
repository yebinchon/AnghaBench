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
typedef  int /*<<< orphan*/  Aggref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aggargtypes ; 
 int /*<<< orphan*/  aggcollid ; 
 int /*<<< orphan*/  aggdirectargs ; 
 int /*<<< orphan*/  aggdistinct ; 
 int /*<<< orphan*/  aggfilter ; 
 int /*<<< orphan*/  aggfnoid ; 
 int /*<<< orphan*/  aggkind ; 
 int /*<<< orphan*/  agglevelsup ; 
 int /*<<< orphan*/  aggorder ; 
 int /*<<< orphan*/  aggsplit ; 
 int /*<<< orphan*/  aggstar ; 
 int /*<<< orphan*/  aggtype ; 
 int /*<<< orphan*/  aggvariadic ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 

__attribute__((used)) static bool
FUNC3(const Aggref *a, const Aggref *b)
{
	FUNC2(aggfnoid);
	FUNC2(aggtype);
	FUNC2(aggcollid);
	FUNC2(inputcollid);
	/* ignore aggtranstype since it might not be set yet */
	FUNC1(aggargtypes);
	FUNC1(aggdirectargs);
	FUNC1(args);
	FUNC1(aggorder);
	FUNC1(aggdistinct);
	FUNC1(aggfilter);
	FUNC2(aggstar);
	FUNC2(aggvariadic);
	FUNC2(aggkind);
	FUNC2(agglevelsup);
	FUNC2(aggsplit);
	FUNC0(location);

	return true;
}