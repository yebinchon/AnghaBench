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
#define  Anum_pg_ts_parser_prsend 132 
#define  Anum_pg_ts_parser_prsheadline 131 
#define  Anum_pg_ts_parser_prslextype 130 
#define  Anum_pg_ts_parser_prsstart 129 
#define  Anum_pg_ts_parser_prstoken 128 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INT4OID ; 
 scalar_t__ INTERNALOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ TSQUERYOID ; 
 scalar_t__ VOIDOID ; 
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
	Oid			typeId[3];
	Oid			retTypeId;
	int			nargs;
	Oid			procOid;

	retTypeId = INTERNALOID;	/* correct for most */
	typeId[0] = INTERNALOID;
	switch (attnum)
	{
		case Anum_pg_ts_parser_prsstart:
			nargs = 2;
			typeId[1] = INT4OID;
			break;
		case Anum_pg_ts_parser_prstoken:
			nargs = 3;
			typeId[1] = INTERNALOID;
			typeId[2] = INTERNALOID;
			break;
		case Anum_pg_ts_parser_prsend:
			nargs = 1;
			retTypeId = VOIDOID;
			break;
		case Anum_pg_ts_parser_prsheadline:
			nargs = 3;
			typeId[1] = INTERNALOID;
			typeId[2] = TSQUERYOID;
			break;
		case Anum_pg_ts_parser_prslextype:
			nargs = 1;

			/*
			 * Note: because the lextype method returns type internal, it must
			 * have an internal-type argument for security reasons.  The
			 * argument is not actually used, but is just passed as a zero.
			 */
			break;
		default:
			/* should not be here */
			FUNC3(ERROR, "unrecognized attribute for text search parser: %d",
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