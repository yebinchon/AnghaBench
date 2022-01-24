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
typedef  int /*<<< orphan*/  Aggref ;

/* Variables and functions */
 int /*<<< orphan*/  AggSplit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  aggtranstype ; 
 int /*<<< orphan*/  aggtype ; 
 int /*<<< orphan*/  aggvariadic ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 

__attribute__((used)) static void
FUNC8(StringInfo str, const Aggref *node)
{
	FUNC5("AGGREF");

	FUNC6(aggfnoid);
	FUNC6(aggtype);
	FUNC6(aggcollid);
	FUNC6(inputcollid);
	FUNC6(aggtranstype);
	FUNC4(aggargtypes);
	FUNC4(aggdirectargs);
	FUNC4(args);
	FUNC4(aggorder);
	FUNC4(aggdistinct);
	FUNC4(aggfilter);
	FUNC0(aggstar);
	FUNC0(aggvariadic);
	FUNC1(aggkind);
	FUNC7(agglevelsup);
	FUNC2(aggsplit, AggSplit);
	FUNC3(location);
}