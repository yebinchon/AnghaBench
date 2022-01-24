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
typedef  scalar_t__ Size ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (char*,char*,scalar_t__) ; 

bool
FUNC3(Datum value1, Datum value2, bool typByVal, int typLen)
{
	bool		res;

	if (typByVal)
	{
		/*
		 * just compare the two datums. NOTE: just comparing "len" bytes will
		 * not do the work, because we do not know how these bytes are aligned
		 * inside the "Datum".  We assume instead that any given datatype is
		 * consistent about how it fills extraneous bits in the Datum.
		 */
		res = (value1 == value2);
	}
	else
	{
		Size		size1,
					size2;
		char	   *s1,
				   *s2;

		/*
		 * Compare the bytes pointed by the pointers stored in the datums.
		 */
		size1 = FUNC1(value1, typByVal, typLen);
		size2 = FUNC1(value2, typByVal, typLen);
		if (size1 != size2)
			return false;
		s1 = (char *) FUNC0(value1);
		s2 = (char *) FUNC0(value2);
		res = (FUNC2(s1, s2, size1) == 0);
	}
	return res;
}