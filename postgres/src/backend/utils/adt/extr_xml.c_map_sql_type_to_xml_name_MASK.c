#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  typname; int /*<<< orphan*/  typnamespace; int /*<<< orphan*/  typtype; } ;
struct TYPE_6__ {char const* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_type ;

/* Variables and functions */
#define  BOOLOID 142 
#define  BPCHAROID 141 
#define  DATEOID 140 
 int /*<<< orphan*/  ERROR ; 
#define  FLOAT4OID 139 
#define  FLOAT8OID 138 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  INT2OID 137 
#define  INT4OID 136 
#define  INT8OID 135 
 int /*<<< orphan*/  MyDatabaseId ; 
#define  NUMERICOID 134 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TIMEOID 133 
#define  TIMESTAMPOID 132 
#define  TIMESTAMPTZOID 131 
#define  TIMETZOID 130 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  TYPTYPE_DOMAIN ; 
#define  VARCHAROID 129 
 int /*<<< orphan*/  VARHDRSZ ; 
#define  XMLOID 128 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC13(Oid typeoid, int typmod)
{
	StringInfoData result;

	FUNC11(&result);

	switch (typeoid)
	{
		case BPCHAROID:
			if (typmod == -1)
				FUNC7(&result, "CHAR");
			else
				FUNC6(&result, "CHAR_%d", typmod - VARHDRSZ);
			break;
		case VARCHAROID:
			if (typmod == -1)
				FUNC7(&result, "VARCHAR");
			else
				FUNC6(&result, "VARCHAR_%d", typmod - VARHDRSZ);
			break;
		case NUMERICOID:
			if (typmod == -1)
				FUNC7(&result, "NUMERIC");
			else
				FUNC6(&result, "NUMERIC_%d_%d",
								 ((typmod - VARHDRSZ) >> 16) & 0xffff,
								 (typmod - VARHDRSZ) & 0xffff);
			break;
		case INT4OID:
			FUNC7(&result, "INTEGER");
			break;
		case INT2OID:
			FUNC7(&result, "SMALLINT");
			break;
		case INT8OID:
			FUNC7(&result, "BIGINT");
			break;
		case FLOAT4OID:
			FUNC7(&result, "REAL");
			break;
		case FLOAT8OID:
			FUNC7(&result, "DOUBLE");
			break;
		case BOOLOID:
			FUNC7(&result, "BOOLEAN");
			break;
		case TIMEOID:
			if (typmod == -1)
				FUNC7(&result, "TIME");
			else
				FUNC6(&result, "TIME_%d", typmod);
			break;
		case TIMETZOID:
			if (typmod == -1)
				FUNC7(&result, "TIME_WTZ");
			else
				FUNC6(&result, "TIME_WTZ_%d", typmod);
			break;
		case TIMESTAMPOID:
			if (typmod == -1)
				FUNC7(&result, "TIMESTAMP");
			else
				FUNC6(&result, "TIMESTAMP_%d", typmod);
			break;
		case TIMESTAMPTZOID:
			if (typmod == -1)
				FUNC7(&result, "TIMESTAMP_WTZ");
			else
				FUNC6(&result, "TIMESTAMP_WTZ_%d", typmod);
			break;
		case DATEOID:
			FUNC7(&result, "DATE");
			break;
		case XMLOID:
			FUNC7(&result, "XML");
			break;
		default:
			{
				HeapTuple	tuple;
				Form_pg_type typtuple;

				tuple = FUNC5(TYPEOID, FUNC3(typeoid));
				if (!FUNC1(tuple))
					FUNC8(ERROR, "cache lookup failed for type %u", typeoid);
				typtuple = (Form_pg_type) FUNC0(tuple);

				FUNC7(&result,
									   FUNC12((typtuple->typtype == TYPTYPE_DOMAIN) ? "Domain" : "UDT",
																				FUNC9(MyDatabaseId),
																				FUNC10(typtuple->typnamespace),
																				FUNC2(typtuple->typname)));

				FUNC4(tuple);
			}
	}

	return result.data;
}