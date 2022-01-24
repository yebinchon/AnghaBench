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
typedef  int /*<<< orphan*/  int16 ;
typedef  int bits8 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ TEXTOID ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,int*,char*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static char **
FUNC13(ArrayType *array, int *numitems)
{
	int			ndim = FUNC3(array);
	int		   *dims = FUNC1(array);
	int			nitems;
	int16		typlen;
	bool		typbyval;
	char		typalign;
	char	  **values;
	char	   *ptr;
	bits8	   *bitmap;
	int			bitmask;
	int			i;

	FUNC6(FUNC2(array) == TEXTOID);

	*numitems = nitems = FUNC5(ndim, dims);

	FUNC11(FUNC2(array),
						 &typlen, &typbyval, &typalign);

	values = (char **) FUNC12(nitems * sizeof(char *));

	ptr = FUNC0(array);
	bitmap = FUNC4(array);
	bitmask = 1;

	for (i = 0; i < nitems; i++)
	{
		if (bitmap && (*bitmap & bitmask) == 0)
		{
			values[i] = NULL;
		}
		else
		{
			values[i] = FUNC8(FUNC7(ptr));
			ptr = FUNC9(ptr, typlen, ptr);
			ptr = (char *) FUNC10(ptr, typalign);
		}

		/* advance bitmap pointer if any */
		if (bitmap)
		{
			bitmask <<= 1;
			if (bitmask == 0x100)
			{
				bitmap++;
				bitmask = 1;
			}
		}
	}

	return values;
}