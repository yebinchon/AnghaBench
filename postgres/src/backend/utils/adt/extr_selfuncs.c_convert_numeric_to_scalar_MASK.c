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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  BOOLOID 145 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  FLOAT4OID 144 
#define  FLOAT8OID 143 
#define  INT2OID 142 
#define  INT4OID 141 
#define  INT8OID 140 
#define  NUMERICOID 139 
#define  OIDOID 138 
#define  REGCLASSOID 137 
#define  REGCONFIGOID 136 
#define  REGDICTIONARYOID 135 
#define  REGNAMESPACEOID 134 
#define  REGOPERATOROID 133 
#define  REGOPEROID 132 
#define  REGPROCEDUREOID 131 
#define  REGPROCOID 130 
#define  REGROLEOID 129 
#define  REGTYPEOID 128 
 int /*<<< orphan*/  numeric_float8_no_overflow ; 

__attribute__((used)) static double
FUNC8(Datum value, Oid typid, bool *failure)
{
	switch (typid)
	{
		case BOOLOID:
			return (double) FUNC0(value);
		case INT2OID:
			return (double) FUNC3(value);
		case INT4OID:
			return (double) FUNC4(value);
		case INT8OID:
			return (double) FUNC5(value);
		case FLOAT4OID:
			return (double) FUNC1(value);
		case FLOAT8OID:
			return (double) FUNC2(value);
		case NUMERICOID:
			/* Note: out-of-range values will be clamped to +-HUGE_VAL */
			return (double)
				FUNC2(FUNC7(numeric_float8_no_overflow,
												   value));
		case OIDOID:
		case REGPROCOID:
		case REGPROCEDUREOID:
		case REGOPEROID:
		case REGOPERATOROID:
		case REGCLASSOID:
		case REGTYPEOID:
		case REGCONFIGOID:
		case REGDICTIONARYOID:
		case REGROLEOID:
		case REGNAMESPACEOID:
			/* we can treat OIDs as integers... */
			return (double) FUNC6(value);
	}

	*failure = true;
	return 0;
}