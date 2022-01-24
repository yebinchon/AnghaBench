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
typedef  int /*<<< orphan*/  StatisticExtInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keys ; 
 int /*<<< orphan*/  kind ; 
 int /*<<< orphan*/  statOid ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const StatisticExtInfo *node)
{
	FUNC2("STATISTICEXTINFO");

	/* NB: this isn't a complete set of fields */
	FUNC3(statOid);
	/* don't write rel, leads to infinite recursion in plan tree dump */
	FUNC1(kind);
	FUNC0(keys);
}