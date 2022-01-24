#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  Value ;
struct TYPE_4__ {int location; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  ParseCallbackState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ Const ;

/* Variables and functions */
 int /*<<< orphan*/  BITOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int FLOAT8PASSBYVAL ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NUMERICOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  T_BitString 132 
#define  T_Float 131 
#define  T_Integer 130 
#define  T_Null 129 
#define  T_String 128 
 int /*<<< orphan*/  UNKNOWNOID ; 
 int /*<<< orphan*/  bit_in ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  numeric_in ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

Const *
FUNC13(ParseState *pstate, Value *value, int location)
{
	Const	   *con;
	Datum		val;
	int64		val64;
	Oid			typeid;
	int			typelen;
	bool		typebyval;
	ParseCallbackState pcbstate;

	switch (FUNC9(value))
	{
		case T_Integer:
			val = FUNC2(FUNC7(value));

			typeid = INT4OID;
			typelen = sizeof(int32);
			typebyval = true;
			break;

		case T_Float:
			/* could be an oversize integer as well as a float ... */
			if (FUNC10(FUNC12(value), true, &val64))
			{
				/*
				 * It might actually fit in int32. Probably only INT_MIN can
				 * occur, but we'll code the test generally just to be sure.
				 */
				int32		val32 = (int32) val64;

				if (val64 == (int64) val32)
				{
					val = FUNC2(val32);

					typeid = INT4OID;
					typelen = sizeof(int32);
					typebyval = true;
				}
				else
				{
					val = FUNC3(val64);

					typeid = INT8OID;
					typelen = sizeof(int64);
					typebyval = FLOAT8PASSBYVAL;	/* int8 and float8 alike */
				}
			}
			else
			{
				/* arrange to report location if numeric_in() fails */
				FUNC11(&pcbstate, pstate, location);
				val = FUNC1(numeric_in,
										  FUNC0(FUNC12(value)),
										  FUNC4(InvalidOid),
										  FUNC2(-1));
				FUNC5(&pcbstate);

				typeid = NUMERICOID;
				typelen = -1;	/* variable len */
				typebyval = false;
			}
			break;

		case T_String:

			/*
			 * We assume here that UNKNOWN's internal representation is the
			 * same as CSTRING
			 */
			val = FUNC0(FUNC12(value));

			typeid = UNKNOWNOID;	/* will be coerced later */
			typelen = -2;		/* cstring-style varwidth type */
			typebyval = false;
			break;

		case T_BitString:
			/* arrange to report location if bit_in() fails */
			FUNC11(&pcbstate, pstate, location);
			val = FUNC1(bit_in,
									  FUNC0(FUNC12(value)),
									  FUNC4(InvalidOid),
									  FUNC2(-1));
			FUNC5(&pcbstate);
			typeid = BITOID;
			typelen = -1;
			typebyval = false;
			break;

		case T_Null:
			/* return a null const */
			con = FUNC8(UNKNOWNOID,
							-1,
							InvalidOid,
							-2,
							(Datum) 0,
							true,
							false);
			con->location = location;
			return con;

		default:
			FUNC6(ERROR, "unrecognized node type: %d", (int) FUNC9(value));
			return NULL;		/* keep compiler quiet */
	}

	con = FUNC8(typeid,
					-1,			/* typmod -1 is OK for all cases */
					InvalidOid, /* all cases are uncollatable types */
					typelen,
					val,
					false,
					typebyval);
	con->location = location;

	return con;
}