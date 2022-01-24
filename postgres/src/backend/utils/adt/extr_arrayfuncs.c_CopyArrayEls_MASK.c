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
typedef  int bits8 ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,char,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(ArrayType *array,
			 Datum *values,
			 bool *nulls,
			 int nitems,
			 int typlen,
			 bool typbyval,
			 char typalign,
			 bool freedata)
{
	char	   *p = FUNC0(array);
	bits8	   *bitmap = FUNC1(array);
	int			bitval = 0;
	int			bitmask = 1;
	int			i;

	if (typbyval)
		freedata = false;

	for (i = 0; i < nitems; i++)
	{
		if (nulls && nulls[i])
		{
			if (!bitmap)		/* shouldn't happen */
				FUNC4(ERROR, "null array element where not supported");
			/* bitmap bit stays 0 */
		}
		else
		{
			bitval |= bitmask;
			p += FUNC2(values[i], typlen, typbyval, typalign, p);
			if (freedata)
				FUNC5(FUNC3(values[i]));
		}
		if (bitmap)
		{
			bitmask <<= 1;
			if (bitmask == 0x100)
			{
				*bitmap++ = bitval;
				bitval = 0;
				bitmask = 1;
			}
		}
	}

	if (bitmap && bitmask != 1)
		*bitmap = bitval;
}