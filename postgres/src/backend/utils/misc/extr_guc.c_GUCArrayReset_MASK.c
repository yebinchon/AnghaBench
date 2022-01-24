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
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TEXTOID ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int*,int,int,int,char,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ,int,int,int,int,char) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *,int) ; 

ArrayType *
FUNC9(ArrayType *array)
{
	ArrayType  *newarray;
	int			i;
	int			index;

	/* if array is currently null, nothing to do */
	if (!array)
		return NULL;

	/* if we're superuser, we can delete everything, so just do it */
	if (FUNC7())
		return NULL;

	newarray = NULL;
	index = 1;

	for (i = 1; i <= FUNC0(array)[0]; i++)
	{
		Datum		d;
		char	   *val;
		char	   *eqsgn;
		bool		isnull;

		d = FUNC2(array, 1, &i,
					  -1 /* varlenarray */ ,
					  -1 /* TEXT's typlen */ ,
					  false /* TEXT's typbyval */ ,
					  'i' /* TEXT's typalign */ ,
					  &isnull);
		if (isnull)
			continue;
		val = FUNC1(d);

		eqsgn = FUNC6(val, '=');
		*eqsgn = '\0';

		/* skip if we have permission to delete it */
		if (FUNC8(val, NULL, true))
			continue;

		/* else add it to the output array */
		if (newarray)
			newarray = FUNC3(newarray, 1, &index,
								 d,
								 false,
								 -1 /* varlenarray */ ,
								 -1 /* TEXT's typlen */ ,
								 false /* TEXT's typbyval */ ,
								 'i' /* TEXT's typalign */ );
		else
			newarray = FUNC4(&d, 1,
									   TEXTOID,
									   -1, false, 'i');

		index++;
		FUNC5(val);
	}

	return newarray;
}