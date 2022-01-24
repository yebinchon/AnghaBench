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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DefElem ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  Anum_pg_ts_template_tmplinit 129 
#define  Anum_pg_ts_template_tmpllexize 128 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INTERNALOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static Datum
FUNC10(DefElem *defel, int attnum)
{
	List	   *funcName = FUNC2(defel);
	Oid			typeId[4];
	Oid			retTypeId;
	int			nargs;
	Oid			procOid;

	retTypeId = INTERNALOID;
	typeId[0] = INTERNALOID;
	typeId[1] = INTERNALOID;
	typeId[2] = INTERNALOID;
	typeId[3] = INTERNALOID;
	switch (attnum)
	{
		case Anum_pg_ts_template_tmplinit:
			nargs = 1;
			break;
		case Anum_pg_ts_template_tmpllexize:
			nargs = 4;
			break;
		default:
			/* should not be here */
			FUNC3(ERROR, "unrecognized attribute for text search template: %d",
				 attnum);
			nargs = 0;			/* keep compiler quiet */
	}

	procOid = FUNC0(funcName, nargs, typeId, false);
	if (FUNC9(procOid) != retTypeId)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC6("function %s should return type %s",
						FUNC8(funcName, nargs, NIL, typeId),
						FUNC7(retTypeId))));

	return FUNC1(procOid);
}