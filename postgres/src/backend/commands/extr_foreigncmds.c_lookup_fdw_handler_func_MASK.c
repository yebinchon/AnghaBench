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
struct TYPE_3__ {int /*<<< orphan*/ * arg; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FDW_HANDLEROID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC6(DefElem *handler)
{
	Oid			handlerOid;

	if (handler == NULL || handler->arg == NULL)
		return InvalidOid;

	/* handlers have no arguments */
	handlerOid = FUNC0((List *) handler->arg, 0, NULL, false);

	/* check that handler has correct return type */
	if (FUNC5(handlerOid) != FDW_HANDLEROID)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC4("function %s must return type %s",
						FUNC1((List *) handler->arg), "fdw_handler")));

	return handlerOid;
}