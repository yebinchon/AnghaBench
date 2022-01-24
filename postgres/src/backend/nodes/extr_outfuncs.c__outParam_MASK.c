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
typedef  int /*<<< orphan*/  Param ;

/* Variables and functions */
 int /*<<< orphan*/  ParamKind ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  paramcollid ; 
 int /*<<< orphan*/  paramid ; 
 int /*<<< orphan*/  paramkind ; 
 int /*<<< orphan*/  paramtype ; 
 int /*<<< orphan*/  paramtypmod ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const Param *node)
{
	FUNC3("PARAM");

	FUNC0(paramkind, ParamKind);
	FUNC1(paramid);
	FUNC4(paramtype);
	FUNC1(paramtypmod);
	FUNC4(paramcollid);
	FUNC2(location);
}