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
typedef  int /*<<< orphan*/  JsonTypeCategory ;
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
#define  JSONOID 131 
 int /*<<< orphan*/  JSONTYPE_ARRAY ; 
 int /*<<< orphan*/  JSONTYPE_BOOL ; 
 int /*<<< orphan*/  JSONTYPE_CAST ; 
 int /*<<< orphan*/  JSONTYPE_COMPOSITE ; 
 int /*<<< orphan*/  JSONTYPE_DATE ; 
 int /*<<< orphan*/  JSONTYPE_JSON ; 
 int /*<<< orphan*/  JSONTYPE_NUMERIC ; 
 int /*<<< orphan*/  JSONTYPE_OTHER ; 
 int /*<<< orphan*/  JSONTYPE_TIMESTAMP ; 
 int /*<<< orphan*/  JSONTYPE_TIMESTAMPTZ ; 
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
					 JsonTypeCategory *tcategory,
					 Oid *outfuncoid)
{
	bool		typisvarlena;

	/* Look through any domain */
	typoid = FUNC2(typoid);

	*outfuncoid = InvalidOid;

	/*
	 * We need to get the output function for everything except date and
	 * timestamp types, array and composite types, booleans, and non-builtin
	 * types where there's a cast to json.
	 */

	switch (typoid)
	{
		case BOOLOID:
			*tcategory = JSONTYPE_BOOL;
			break;

		case INT2OID:
		case INT4OID:
		case INT8OID:
		case FLOAT4OID:
		case FLOAT8OID:
		case NUMERICOID:
			FUNC3(typoid, outfuncoid, &typisvarlena);
			*tcategory = JSONTYPE_NUMERIC;
			break;

		case DATEOID:
			*tcategory = JSONTYPE_DATE;
			break;

		case TIMESTAMPOID:
			*tcategory = JSONTYPE_TIMESTAMP;
			break;

		case TIMESTAMPTZOID:
			*tcategory = JSONTYPE_TIMESTAMPTZ;
			break;

		case JSONOID:
		case JSONBOID:
			FUNC3(typoid, outfuncoid, &typisvarlena);
			*tcategory = JSONTYPE_JSON;
			break;

		default:
			/* Check for arrays and composites */
			if (FUNC0(FUNC4(typoid)) || typoid == ANYARRAYOID
				|| typoid == RECORDARRAYOID)
				*tcategory = JSONTYPE_ARRAY;
			else if (FUNC5(typoid))	/* includes RECORDOID */
				*tcategory = JSONTYPE_COMPOSITE;
			else
			{
				/* It's probably the general case ... */
				*tcategory = JSONTYPE_OTHER;
				/* but let's look for a cast to json, if it's not built-in */
				if (typoid >= FirstNormalObjectId)
				{
					Oid			castfunc;
					CoercionPathType ctype;

					ctype = FUNC1(JSONOID, typoid,
												  COERCION_EXPLICIT,
												  &castfunc);
					if (ctype == COERCION_PATH_FUNC && FUNC0(castfunc))
					{
						*tcategory = JSONTYPE_CAST;
						*outfuncoid = castfunc;
					}
					else
					{
						/* non builtin type with no cast */
						FUNC3(typoid, outfuncoid, &typisvarlena);
					}
				}
				else
				{
					/* any other builtin type */
					FUNC3(typoid, outfuncoid, &typisvarlena);
				}
			}
			break;
	}
}