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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int Oid ;

/* Variables and functions */
#define  BITOID 137 
#define  BOOLOID 136 
#define  FLOAT4OID 135 
#define  FLOAT8OID 134 
#define  INT2OID 133 
#define  INT4OID 132 
#define  INT8OID 131 
#define  NUMERICOID 130 
#define  OIDOID 129 
 int /*<<< orphan*/  FUNC0 (char,int) ; 
#define  VARBITOID 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(StringInfo s, Oid typid, char *outputstr)
{
	const char *valptr;

	switch (typid)
	{
		case INT2OID:
		case INT4OID:
		case INT8OID:
		case OIDOID:
		case FLOAT4OID:
		case FLOAT8OID:
		case NUMERICOID:
			/* NB: We don't care about Inf, NaN et al. */
			FUNC3(s, outputstr);
			break;

		case BITOID:
		case VARBITOID:
			FUNC1(s, "B'%s'", outputstr);
			break;

		case BOOLOID:
			if (FUNC4(outputstr, "t") == 0)
				FUNC3(s, "true");
			else
				FUNC3(s, "false");
			break;

		default:
			FUNC2(s, '\'');
			for (valptr = outputstr; *valptr; valptr++)
			{
				char		ch = *valptr;

				if (FUNC0(ch, false))
					FUNC2(s, ch);
				FUNC2(s, ch);
			}
			FUNC2(s, '\'');
			break;
	}
}