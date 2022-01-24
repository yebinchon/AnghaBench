#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int fn_nargs; } ;
struct fp_info {int /*<<< orphan*/ * argtypes; TYPE_1__ flinfo; } ;
typedef  int int16 ;
struct TYPE_13__ {int nargs; TYPE_2__* args; } ;
struct TYPE_12__ {scalar_t__ cursor; scalar_t__ len; } ;
struct TYPE_11__ {int isnull; void* value; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_BINARY_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC_MAX_ARGS ; 
 void* FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static int16
FUNC10(StringInfo msgBuf, struct fp_info *fip,
						 FunctionCallInfo fcinfo)
{
	int			nargs;
	int			i;
	StringInfoData abuf;

	nargs = FUNC8(msgBuf, 4);	/* # of arguments */

	if (fip->flinfo.fn_nargs != nargs || nargs > FUNC_MAX_ARGS)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC4("function call message contains %d arguments but function requires %d",
						nargs, fip->flinfo.fn_nargs)));

	fcinfo->nargs = nargs;

	FUNC6(&abuf);

	/*
	 * Copy supplied arguments into arg vector.  In protocol 2.0 these are
	 * always assumed to be supplied in binary format.
	 *
	 * Note: although the original protocol 2.0 code did not have any way for
	 * the frontend to specify a NULL argument, we now choose to interpret
	 * length == -1 as meaning a NULL.
	 */
	for (i = 0; i < nargs; ++i)
	{
		int			argsize;
		Oid			typreceive;
		Oid			typioparam;

		FUNC5(fip->argtypes[i], &typreceive, &typioparam);

		argsize = FUNC8(msgBuf, 4);
		if (argsize == -1)
		{
			fcinfo->args[i].isnull = true;
			fcinfo->args[i].value = FUNC0(typreceive, NULL,
														   typioparam, -1);
			continue;
		}
		fcinfo->args[i].isnull = false;
		if (argsize < 0)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC4("invalid argument size %d in function call message",
							argsize)));

		/* Reset abuf to empty, and insert raw data into it */
		FUNC9(&abuf);
		FUNC1(&abuf,
							   FUNC7(msgBuf, argsize),
							   argsize);

		fcinfo->args[i].value = FUNC0(typreceive, &abuf,
													   typioparam, -1);

		/* Trouble if it didn't eat the whole buffer */
		if (abuf.cursor != abuf.len)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_BINARY_REPRESENTATION),
					 FUNC4("incorrect binary data format in function argument %d",
							i + 1)));
	}

	/* Desired result format is always binary in protocol 2.0 */
	return 1;
}