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
typedef  int Oid ;
typedef  int /*<<< orphan*/  JsonbTypeCategory ;
typedef  int /*<<< orphan*/  CoercionPathType ;

/* Variables and functions */
 int ANYARRAYOID ; 
#define  BOOLOID 139 
 int /*<<< orphan*/  COERCION_EXPLICIT ; 
 int /*<<< orphan*/  COERCION_PATH_FUNC ; 
#define  DATEOID 138 
#define  FLOAT4OID 137 
#define  FLOAT8OID 136 
 int FirstNormalObjectId ; 
#define  INT2OID 135 
#define  INT4OID 134 
#define  INT8OID 133 
 int InvalidOid ; 
#define  JSONBOID 132 
 int /*<<< orphan*/  JSONBTYPE_ARRAY ; 
 int /*<<< orphan*/  JSONBTYPE_BOOL ; 
 int /*<<< orphan*/  JSONBTYPE_COMPOSITE ; 
 int /*<<< orphan*/  JSONBTYPE_DATE ; 
 int /*<<< orphan*/  JSONBTYPE_JSON ; 
 int /*<<< orphan*/  JSONBTYPE_JSONB ; 
 int /*<<< orphan*/  JSONBTYPE_JSONCAST ; 
 int /*<<< orphan*/  JSONBTYPE_NUMERIC ; 
 int /*<<< orphan*/  JSONBTYPE_OTHER ; 
 int /*<<< orphan*/  JSONBTYPE_TIMESTAMP ; 
 int /*<<< orphan*/  JSONBTYPE_TIMESTAMPTZ ; 
#define  JSONOID 131 
#define  NUMERICOID 130 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RECORDARRAYOID ; 
#define  TIMESTAMPOID 129 
#define  TIMESTAMPTZOID 128 
 int /*<<< orphan*/  FUNC1 (int const,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(Oid typoid,
					  JsonbTypeCategory *tcategory,
					  Oid *outfuncoid)
{
	bool		typisvarlena;

	/* Look through any domain */
	typoid = FUNC2(typoid);

	*outfuncoid = InvalidOid;

	/*
	 * We need to get the output function for everything except date and
	 * timestamp types, booleans, array and composite types, json and jsonb,
	 * and non-builtin types where there's a cast to json. In this last case
	 * we return the oid of the cast function instead.
	 */

	switch (typoid)
	{
		case BOOLOID:
			*tcategory = JSONBTYPE_BOOL;
			break;

		case INT2OID:
		case INT4OID:
		case INT8OID:
		case FLOAT4OID:
		case FLOAT8OID:
		case NUMERICOID:
			FUNC3(typoid, outfuncoid, &typisvarlena);
			*tcategory = JSONBTYPE_NUMERIC;
			break;

		case DATEOID:
			*tcategory = JSONBTYPE_DATE;
			break;

		case TIMESTAMPOID:
			*tcategory = JSONBTYPE_TIMESTAMP;
			break;

		case TIMESTAMPTZOID:
			*tcategory = JSONBTYPE_TIMESTAMPTZ;
			break;

		case JSONBOID:
			*tcategory = JSONBTYPE_JSONB;
			break;

		case JSONOID:
			*tcategory = JSONBTYPE_JSON;
			break;

		default:
			/* Check for arrays and composites */
			if (FUNC0(FUNC4(typoid)) || typoid == ANYARRAYOID
				|| typoid == RECORDARRAYOID)
				*tcategory = JSONBTYPE_ARRAY;
			else if (FUNC5(typoid))	/* includes RECORDOID */
				*tcategory = JSONBTYPE_COMPOSITE;
			else
			{
				/* It's probably the general case ... */
				*tcategory = JSONBTYPE_OTHER;

				/*
				 * but first let's look for a cast to json (note: not to
				 * jsonb) if it's not built-in.
				 */
				if (typoid >= FirstNormalObjectId)
				{
					Oid			castfunc;
					CoercionPathType ctype;

					ctype = FUNC1(JSONOID, typoid,
												  COERCION_EXPLICIT, &castfunc);
					if (ctype == COERCION_PATH_FUNC && FUNC0(castfunc))
					{
						*tcategory = JSONBTYPE_JSONCAST;
						*outfuncoid = castfunc;
					}
					else
					{
						/* not a cast type, so just get the usual output func */
						FUNC3(typoid, outfuncoid, &typisvarlena);
					}
				}
				else
				{
					/* any other builtin type */
					FUNC3(typoid, outfuncoid, &typisvarlena);
				}
				break;
			}
	}
}