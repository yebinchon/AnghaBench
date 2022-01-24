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
struct config_generic {char* name; } ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  TEXTOID ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*,int,int,int,char,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ,int,int,int,int,char) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,char) ; 
 struct config_generic* FUNC6 (char const*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 

ArrayType *
FUNC10(ArrayType *array, const char *name)
{
	struct config_generic *record;
	ArrayType  *newarray;
	int			i;
	int			index;

	FUNC1(name);

	/* test if the option is valid and we're allowed to set it */
	(void) FUNC9(name, NULL, false);

	/* normalize name (converts obsolete GUC names to modern spellings) */
	record = FUNC6(name, false, WARNING);
	if (record)
		name = record->name;

	/* if array is currently null, then surely nothing to delete */
	if (!array)
		return NULL;

	newarray = NULL;
	index = 1;

	for (i = 1; i <= FUNC0(array)[0]; i++)
	{
		Datum		d;
		char	   *val;
		bool		isnull;

		d = FUNC3(array, 1, &i,
					  -1 /* varlenarray */ ,
					  -1 /* TEXT's typlen */ ,
					  false /* TEXT's typbyval */ ,
					  'i' /* TEXT's typalign */ ,
					  &isnull);
		if (isnull)
			continue;
		val = FUNC2(d);

		/* ignore entry if it's what we want to delete */
		if (FUNC8(val, name, FUNC7(name)) == 0
			&& val[FUNC7(name)] == '=')
			continue;

		/* else add it to the output array */
		if (newarray)
			newarray = FUNC4(newarray, 1, &index,
								 d,
								 false,
								 -1 /* varlenarray */ ,
								 -1 /* TEXT's typlen */ ,
								 false /* TEXT's typbyval */ ,
								 'i' /* TEXT's typalign */ );
		else
			newarray = FUNC5(&d, 1,
									   TEXTOID,
									   -1, false, 'i');

		index++;
	}

	return newarray;
}