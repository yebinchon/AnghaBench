#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_context ;
struct TYPE_8__ {int consttype; int /*<<< orphan*/  consttypmod; int /*<<< orphan*/  constvalue; scalar_t__ constisnull; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Const ;

/* Variables and functions */
#define  BOOLOID 131 
#define  INT4OID 130 
#define  NUMERICOID 129 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  UNKNOWNOID 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(Const *constval, deparse_context *context, int showtype)
{
	StringInfo	buf = context->buf;
	Oid			typoutput;
	bool		typIsVarlena;
	char	   *extval;
	bool		needlabel = false;

	if (constval->constisnull)
	{
		/*
		 * Always label the type of a NULL constant to prevent misdecisions
		 * about type when reparsing.
		 */
		FUNC2(buf, "NULL");
		if (showtype >= 0)
		{
			FUNC1(buf, "::%s",
							 FUNC3(constval->consttype,
													  constval->consttypmod));
			FUNC5(constval, context);
		}
		return;
	}

	FUNC4(constval->consttype,
					  &typoutput, &typIsVarlena);

	extval = FUNC0(typoutput, constval->constvalue);

	switch (constval->consttype)
	{
		case INT4OID:

			/*
			 * INT4 can be printed without any decoration, unless it is
			 * negative; in that case print it as '-nnn'::integer to ensure
			 * that the output will re-parse as a constant, not as a constant
			 * plus operator.  In most cases we could get away with printing
			 * (-nnn) instead, because of the way that gram.y handles negative
			 * literals; but that doesn't work for INT_MIN, and it doesn't
			 * seem that much prettier anyway.
			 */
			if (extval[0] != '-')
				FUNC2(buf, extval);
			else
			{
				FUNC1(buf, "'%s'", extval);
				needlabel = true;	/* we must attach a cast */
			}
			break;

		case NUMERICOID:

			/*
			 * NUMERIC can be printed without quotes if it looks like a float
			 * constant (not an integer, and not Infinity or NaN) and doesn't
			 * have a leading sign (for the same reason as for INT4).
			 */
			if (FUNC6((unsigned char) extval[0]) &&
				FUNC10(extval, "eE.") != FUNC11(extval))
			{
				FUNC2(buf, extval);
			}
			else
			{
				FUNC1(buf, "'%s'", extval);
				needlabel = true;	/* we must attach a cast */
			}
			break;

		case BOOLOID:
			if (FUNC9(extval, "t") == 0)
				FUNC2(buf, "true");
			else
				FUNC2(buf, "false");
			break;

		default:
			FUNC8(buf, extval);
			break;
	}

	FUNC7(extval);

	if (showtype < 0)
		return;

	/*
	 * For showtype == 0, append ::typename unless the constant will be
	 * implicitly typed as the right type when it is read in.
	 *
	 * XXX this code has to be kept in sync with the behavior of the parser,
	 * especially make_const.
	 */
	switch (constval->consttype)
	{
		case BOOLOID:
		case UNKNOWNOID:
			/* These types can be left unlabeled */
			needlabel = false;
			break;
		case INT4OID:
			/* We determined above whether a label is needed */
			break;
		case NUMERICOID:

			/*
			 * Float-looking constants will be typed as numeric, which we
			 * checked above; but if there's a nondefault typmod we need to
			 * show it.
			 */
			needlabel |= (constval->consttypmod >= 0);
			break;
		default:
			needlabel = true;
			break;
	}
	if (needlabel || showtype > 0)
		FUNC1(buf, "::%s",
						 FUNC3(constval->consttype,
												  constval->consttypmod));

	FUNC5(constval, context);
}