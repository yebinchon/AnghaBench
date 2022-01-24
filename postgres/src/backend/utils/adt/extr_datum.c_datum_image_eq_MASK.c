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
struct varlena {int dummy; } ;
typedef  scalar_t__ Size ;
typedef  scalar_t__ Pointer ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 struct varlena* FUNC2 (scalar_t__) ; 
 char* FUNC3 (struct varlena*) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct varlena*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

bool
FUNC9(Datum value1, Datum value2, bool typByVal, int typLen)
{
	Size		len1,
				len2;
	bool		result = true;

	if (typByVal)
	{
		result = (value1 == value2);
	}
	else if (typLen > 0)
	{
		result = (FUNC5(FUNC1(value1),
						 FUNC1(value2),
						 typLen) == 0);
	}
	else if (typLen == -1)
	{
		len1 = FUNC8(value1);
		len2 = FUNC8(value2);
		/* No need to de-toast if lengths don't match. */
		if (len1 != len2)
			result = false;
		else
		{
			struct varlena *arg1val;
			struct varlena *arg2val;

			arg1val = FUNC2(value1);
			arg2val = FUNC2(value2);

			result = (FUNC5(FUNC3(arg1val),
							 FUNC3(arg2val),
							 len1 - VARHDRSZ) == 0);

			/* Only free memory if it's a copy made here. */
			if ((Pointer) arg1val != (Pointer) value1)
				FUNC6(arg1val);
			if ((Pointer) arg2val != (Pointer) value2)
				FUNC6(arg2val);
		}
	}
	else if (typLen == -2)
	{
		char	   *s1,
				   *s2;

		/* Compare cstring datums */
		s1 = FUNC0(value1);
		s2 = FUNC0(value2);
		len1 = FUNC7(s1) + 1;
		len2 = FUNC7(s2) + 1;
		if (len1 != len2)
			return false;
		result = (FUNC5(s1, s2, len1) == 0);
	}
	else
		FUNC4(ERROR, "unexpected typLen: %d", typLen);

	return result;
}