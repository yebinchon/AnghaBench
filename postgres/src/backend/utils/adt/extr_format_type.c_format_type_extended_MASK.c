#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int bits16 ;
struct TYPE_2__ {scalar_t__ typelem; char typstorage; int /*<<< orphan*/  typmodout; int /*<<< orphan*/  typname; int /*<<< orphan*/  typnamespace; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
#define  BITOID 143 
#define  BOOLOID 142 
#define  BPCHAROID 141 
 int /*<<< orphan*/  ERROR ; 
#define  FLOAT4OID 140 
#define  FLOAT8OID 139 
 int FORMAT_TYPE_ALLOW_INVALID ; 
 int FORMAT_TYPE_FORCE_QUALIFY ; 
 int FORMAT_TYPE_TYPEMOD_GIVEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  INT2OID 138 
#define  INT4OID 137 
#define  INT8OID 136 
#define  INTERVALOID 135 
 scalar_t__ InvalidOid ; 
#define  NUMERICOID 134 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TIMEOID 133 
#define  TIMESTAMPOID 132 
#define  TIMESTAMPTZOID 131 
#define  TIMETZOID 130 
 int /*<<< orphan*/  TYPEOID ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
#define  VARBITOID 129 
#define  VARCHAROID 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 
 char* FUNC12 (char*,char*) ; 

char *
FUNC13(Oid type_oid, int32 typemod, bits16 flags)
{
	HeapTuple	tuple;
	Form_pg_type typeform;
	Oid			array_base_type;
	bool		is_array;
	char	   *buf;
	bool		with_typemod;

	if (type_oid == InvalidOid && (flags & FORMAT_TYPE_ALLOW_INVALID) != 0)
		return FUNC11("-");

	tuple = FUNC5(TYPEOID, FUNC3(type_oid));
	if (!FUNC1(tuple))
	{
		if ((flags & FORMAT_TYPE_ALLOW_INVALID) != 0)
			return FUNC11("???");
		else
			FUNC7(ERROR, "cache lookup failed for type %u", type_oid);
	}
	typeform = (Form_pg_type) FUNC0(tuple);

	/*
	 * Check if it's a regular (variable length) array type.  Fixed-length
	 * array types such as "name" shouldn't get deconstructed.  As of Postgres
	 * 8.1, rather than checking typlen we check the toast property, and don't
	 * deconstruct "plain storage" array types --- this is because we don't
	 * want to show oidvector as oid[].
	 */
	array_base_type = typeform->typelem;

	if (array_base_type != InvalidOid && typeform->typstorage != 'p')
	{
		/* Switch our attention to the array element type */
		FUNC4(tuple);
		tuple = FUNC5(TYPEOID, FUNC3(array_base_type));
		if (!FUNC1(tuple))
		{
			if ((flags & FORMAT_TYPE_ALLOW_INVALID) != 0)
				return FUNC11("???[]");
			else
				FUNC7(ERROR, "cache lookup failed for type %u", type_oid);
		}
		typeform = (Form_pg_type) FUNC0(tuple);
		type_oid = array_base_type;
		is_array = true;
	}
	else
		is_array = false;

	with_typemod = (flags & FORMAT_TYPE_TYPEMOD_GIVEN) != 0 && (typemod >= 0);

	/*
	 * See if we want to special-case the output for certain built-in types.
	 * Note that these special cases should all correspond to special
	 * productions in gram.y, to ensure that the type name will be taken as a
	 * system type, not a user type of the same name.
	 *
	 * If we do not provide a special-case output here, the type name will be
	 * handled the same way as a user type name --- in particular, it will be
	 * double-quoted if it matches any lexer keyword.  This behavior is
	 * essential for some cases, such as types "bit" and "char".
	 */
	buf = NULL;					/* flag for no special case */

	switch (type_oid)
	{
		case BITOID:
			if (with_typemod)
				buf = FUNC9("bit", typemod, typeform->typmodout);
			else if ((flags & FORMAT_TYPE_TYPEMOD_GIVEN) != 0)
			{
				/*
				 * bit with typmod -1 is not the same as BIT, which means
				 * BIT(1) per SQL spec.  Report it as the quoted typename so
				 * that parser will not assign a bogus typmod.
				 */
			}
			else
				buf = FUNC11("bit");
			break;

		case BOOLOID:
			buf = FUNC11("boolean");
			break;

		case BPCHAROID:
			if (with_typemod)
				buf = FUNC9("character", typemod, typeform->typmodout);
			else if ((flags & FORMAT_TYPE_TYPEMOD_GIVEN) != 0)
			{
				/*
				 * bpchar with typmod -1 is not the same as CHARACTER, which
				 * means CHARACTER(1) per SQL spec.  Report it as bpchar so
				 * that parser will not assign a bogus typmod.
				 */
			}
			else
				buf = FUNC11("character");
			break;

		case FLOAT4OID:
			buf = FUNC11("real");
			break;

		case FLOAT8OID:
			buf = FUNC11("double precision");
			break;

		case INT2OID:
			buf = FUNC11("smallint");
			break;

		case INT4OID:
			buf = FUNC11("integer");
			break;

		case INT8OID:
			buf = FUNC11("bigint");
			break;

		case NUMERICOID:
			if (with_typemod)
				buf = FUNC9("numeric", typemod, typeform->typmodout);
			else
				buf = FUNC11("numeric");
			break;

		case INTERVALOID:
			if (with_typemod)
				buf = FUNC9("interval", typemod, typeform->typmodout);
			else
				buf = FUNC11("interval");
			break;

		case TIMEOID:
			if (with_typemod)
				buf = FUNC9("time", typemod, typeform->typmodout);
			else
				buf = FUNC11("time without time zone");
			break;

		case TIMETZOID:
			if (with_typemod)
				buf = FUNC9("time", typemod, typeform->typmodout);
			else
				buf = FUNC11("time with time zone");
			break;

		case TIMESTAMPOID:
			if (with_typemod)
				buf = FUNC9("timestamp", typemod, typeform->typmodout);
			else
				buf = FUNC11("timestamp without time zone");
			break;

		case TIMESTAMPTZOID:
			if (with_typemod)
				buf = FUNC9("timestamp", typemod, typeform->typmodout);
			else
				buf = FUNC11("timestamp with time zone");
			break;

		case VARBITOID:
			if (with_typemod)
				buf = FUNC9("bit varying", typemod, typeform->typmodout);
			else
				buf = FUNC11("bit varying");
			break;

		case VARCHAROID:
			if (with_typemod)
				buf = FUNC9("character varying", typemod, typeform->typmodout);
			else
				buf = FUNC11("character varying");
			break;
	}

	if (buf == NULL)
	{
		/*
		 * Default handling: report the name as it appears in the catalog.
		 * Here, we must qualify the name if it is not visible in the search
		 * path or if caller requests it; and we must double-quote it if it's
		 * not a standard identifier or if it matches any keyword.
		 */
		char	   *nspname;
		char	   *typname;

		if ((flags & FORMAT_TYPE_FORCE_QUALIFY) == 0 &&
			FUNC6(type_oid))
			nspname = NULL;
		else
			nspname = FUNC8(typeform->typnamespace);

		typname = FUNC2(typeform->typname);

		buf = FUNC12(nspname, typname);

		if (with_typemod)
			buf = FUNC9(buf, typemod, typeform->typmodout);
	}

	if (is_array)
		buf = FUNC10("%s[]", buf);

	FUNC4(tuple);

	return buf;
}