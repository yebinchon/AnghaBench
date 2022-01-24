#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  constbyval; int /*<<< orphan*/  constlen; int /*<<< orphan*/  constvalue; scalar_t__ constisnull; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ Const ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  constbyval ; 
 int /*<<< orphan*/  constcollid ; 
 int /*<<< orphan*/  constisnull ; 
 int /*<<< orphan*/  constlen ; 
 int /*<<< orphan*/  consttype ; 
 int /*<<< orphan*/  consttypmod ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const Const *node)
{
	FUNC3("CONST");

	FUNC4(consttype);
	FUNC1(consttypmod);
	FUNC4(constcollid);
	FUNC1(constlen);
	FUNC0(constbyval);
	FUNC0(constisnull);
	FUNC2(location);

	FUNC5(str, " :constvalue ");
	if (node->constisnull)
		FUNC5(str, "<>");
	else
		FUNC6(str, node->constvalue, node->constlen, node->constbyval);
}