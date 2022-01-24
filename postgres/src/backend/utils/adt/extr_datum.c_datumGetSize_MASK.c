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
typedef  char varlena ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATA_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 

Size
FUNC9(Datum value, bool typByVal, int typLen)
{
	Size		size;

	if (typByVal)
	{
		/* Pass-by-value types are always fixed-length */
		FUNC0(typLen > 0 && typLen <= sizeof(Datum));
		size = (Size) typLen;
	}
	else
	{
		if (typLen > 0)
		{
			/* Fixed-length pass-by-ref type */
			size = (Size) typLen;
		}
		else if (typLen == -1)
		{
			/* It is a varlena datatype */
			struct varlena *s = (struct varlena *) FUNC1(value);

			if (!FUNC2(s))
				FUNC5(ERROR,
						(FUNC6(ERRCODE_DATA_EXCEPTION),
						 FUNC7("invalid Datum pointer")));

			size = (Size) FUNC3(s);
		}
		else if (typLen == -2)
		{
			/* It is a cstring datatype */
			char	   *s = (char *) FUNC1(value);

			if (!FUNC2(s))
				FUNC5(ERROR,
						(FUNC6(ERRCODE_DATA_EXCEPTION),
						 FUNC7("invalid Datum pointer")));

			size = (Size) (FUNC8(s) + 1);
		}
		else
		{
			FUNC4(ERROR, "invalid typLen: %d", typLen);
			size = 0;			/* keep compiler quiet */
		}
	}

	return size;
}