#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int fn_nargs; } ;
struct fp_info {int /*<<< orphan*/ * argtypes; TYPE_1__ flinfo; } ;
typedef  int int16 ;
struct TYPE_17__ {int nargs; TYPE_2__* args; } ;
struct TYPE_16__ {char* data; scalar_t__ cursor; scalar_t__ len; } ;
struct TYPE_15__ {int isnull; int /*<<< orphan*/  value; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  TYPE_3__* StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_5__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_BINARY_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC_MAX_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 

__attribute__((used)) static int16
FUNC15(StringInfo msgBuf, struct fp_info *fip,
					  FunctionCallInfo fcinfo)
{
	int			nargs;
	int			i;
	int			numAFormats;
	int16	   *aformats = NULL;
	StringInfoData abuf;

	/* Get the argument format codes */
	numAFormats = FUNC13(msgBuf, 2);
	if (numAFormats > 0)
	{
		aformats = (int16 *) FUNC9(numAFormats * sizeof(int16));
		for (i = 0; i < numAFormats; i++)
			aformats[i] = FUNC13(msgBuf, 2);
	}

	nargs = FUNC13(msgBuf, 2);	/* # of arguments */

	if (fip->flinfo.fn_nargs != nargs || nargs > FUNC_MAX_ARGS)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC5("function call message contains %d arguments but function requires %d",
						nargs, fip->flinfo.fn_nargs)));

	fcinfo->nargs = nargs;

	if (numAFormats > 1 && numAFormats != nargs)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC5("function call message contains %d argument formats but %d arguments",
						numAFormats, nargs)));

	FUNC8(&abuf);

	/*
	 * Copy supplied arguments into arg vector.
	 */
	for (i = 0; i < nargs; ++i)
	{
		int			argsize;
		int16		aformat;

		argsize = FUNC13(msgBuf, 4);
		if (argsize == -1)
		{
			fcinfo->args[i].isnull = true;
		}
		else
		{
			fcinfo->args[i].isnull = false;
			if (argsize < 0)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC5("invalid argument size %d in function call message",
								argsize)));

			/* Reset abuf to empty, and insert raw data into it */
			FUNC14(&abuf);
			FUNC2(&abuf,
								   FUNC12(msgBuf, argsize),
								   argsize);
		}

		if (numAFormats > 1)
			aformat = aformats[i];
		else if (numAFormats > 0)
			aformat = aformats[0];
		else
			aformat = 0;		/* default = text */

		if (aformat == 0)
		{
			Oid			typinput;
			Oid			typioparam;
			char	   *pstring;

			FUNC7(fip->argtypes[i], &typinput, &typioparam);

			/*
			 * Since stringinfo.c keeps a trailing null in place even for
			 * binary data, the contents of abuf are a valid C string.  We
			 * have to do encoding conversion before calling the typinput
			 * routine, though.
			 */
			if (argsize == -1)
				pstring = NULL;
			else
				pstring = FUNC11(abuf.data, argsize);

			fcinfo->args[i].value = FUNC0(typinput, pstring,
														 typioparam, -1);
			/* Free result of encoding conversion, if any */
			if (pstring && pstring != abuf.data)
				FUNC10(pstring);
		}
		else if (aformat == 1)
		{
			Oid			typreceive;
			Oid			typioparam;
			StringInfo	bufptr;

			/* Call the argument type's binary input converter */
			FUNC6(fip->argtypes[i], &typreceive, &typioparam);

			if (argsize == -1)
				bufptr = NULL;
			else
				bufptr = &abuf;

			fcinfo->args[i].value = FUNC1(typreceive, bufptr,
														   typioparam, -1);

			/* Trouble if it didn't eat the whole buffer */
			if (argsize != -1 && abuf.cursor != abuf.len)
				FUNC3(ERROR,
						(FUNC4(ERRCODE_INVALID_BINARY_REPRESENTATION),
						 FUNC5("incorrect binary data format in function argument %d",
								i + 1)));
		}
		else
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC5("unsupported format code: %d", aformat)));
	}

	/* Return result format code */
	return (int16) FUNC13(msgBuf, 2);
}