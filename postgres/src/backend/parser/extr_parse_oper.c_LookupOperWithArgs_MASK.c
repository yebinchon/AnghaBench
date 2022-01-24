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
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_3__ {int /*<<< orphan*/  objname; int /*<<< orphan*/  objargs; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectWithArgs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

Oid
FUNC6(ObjectWithArgs *oper, bool noError)
{
	TypeName   *oprleft,
			   *oprright;
	Oid			leftoid,
				rightoid;

	FUNC0(FUNC4(oper->objargs) == 2);
	oprleft = FUNC3(oper->objargs);
	oprright = FUNC5(oper->objargs);

	if (oprleft == NULL)
		leftoid = InvalidOid;
	else
		leftoid = FUNC2(NULL, oprleft, noError);

	if (oprright == NULL)
		rightoid = InvalidOid;
	else
		rightoid = FUNC2(NULL, oprright, noError);

	return FUNC1(NULL, oper->objname, leftoid, rightoid,
						  noError, -1);
}