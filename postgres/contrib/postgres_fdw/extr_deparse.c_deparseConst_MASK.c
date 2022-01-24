#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_expr_cxt ;
struct TYPE_6__ {int consttype; int /*<<< orphan*/  consttypmod; int /*<<< orphan*/  constvalue; scalar_t__ constisnull; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Const ;

/* Variables and functions */
#define  BITOID 138 
#define  BOOLOID 137 
#define  FLOAT4OID 136 
#define  FLOAT8OID 135 
#define  INT2OID 134 
#define  INT4OID 133 
#define  INT8OID 132 
#define  NUMERICOID 131 
#define  OIDOID 130 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  UNKNOWNOID 129 
#define  VARBITOID 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(Const *node, deparse_expr_cxt *context, int showtype)
{
	StringInfo	buf = context->buf;
	Oid			typoutput;
	bool		typIsVarlena;
	char	   *extval;
	bool		isfloat = false;
	bool		needlabel;

	if (node->constisnull)
	{
		FUNC2(buf, "NULL");
		if (showtype >= 0)
			FUNC1(buf, "::%s",
							 FUNC4(node->consttype,
											   node->consttypmod));
		return;
	}

	FUNC5(node->consttype,
					  &typoutput, &typIsVarlena);
	extval = FUNC0(typoutput, node->constvalue);

	switch (node->consttype)
	{
		case INT2OID:
		case INT4OID:
		case INT8OID:
		case OIDOID:
		case FLOAT4OID:
		case FLOAT8OID:
		case NUMERICOID:
			{
				/*
				 * No need to quote unless it's a special value such as 'NaN'.
				 * See comments in get_const_expr().
				 */
				if (FUNC10(extval, "0123456789+-eE.") == FUNC9(extval))
				{
					if (extval[0] == '+' || extval[0] == '-')
						FUNC1(buf, "(%s)", extval);
					else
						FUNC2(buf, extval);
					if (FUNC8(extval, "eE.") != FUNC9(extval))
						isfloat = true; /* it looks like a float */
				}
				else
					FUNC1(buf, "'%s'", extval);
			}
			break;
		case BITOID:
		case VARBITOID:
			FUNC1(buf, "B'%s'", extval);
			break;
		case BOOLOID:
			if (FUNC7(extval, "t") == 0)
				FUNC2(buf, "true");
			else
				FUNC2(buf, "false");
			break;
		default:
			FUNC3(buf, extval);
			break;
	}

	FUNC6(extval);

	if (showtype < 0)
		return;

	/*
	 * For showtype == 0, append ::typename unless the constant will be
	 * implicitly typed as the right type when it is read in.
	 *
	 * XXX this code has to be kept in sync with the behavior of the parser,
	 * especially make_const.
	 */
	switch (node->consttype)
	{
		case BOOLOID:
		case INT4OID:
		case UNKNOWNOID:
			needlabel = false;
			break;
		case NUMERICOID:
			needlabel = !isfloat || (node->consttypmod >= 0);
			break;
		default:
			needlabel = true;
			break;
	}
	if (needlabel || showtype > 0)
		FUNC1(buf, "::%s",
						 FUNC4(node->consttype,
										   node->consttypmod));
}