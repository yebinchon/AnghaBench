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
typedef  int /*<<< orphan*/  GucSource ;
typedef  int /*<<< orphan*/  GucContext ;
typedef  int /*<<< orphan*/  GucAction ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  FUNC5 (char*,char**,char**) ; 
 scalar_t__ TEXTOID ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int*,int,int,int,char,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

void
FUNC14(ArrayType *array,
				GucContext context, GucSource source, GucAction action)
{
	int			i;

	FUNC4(array != NULL);
	FUNC4(FUNC1(array) == TEXTOID);
	FUNC4(FUNC3(array) == 1);
	FUNC4(FUNC2(array)[0] == 1);

	for (i = 1; i <= FUNC0(array)[0]; i++)
	{
		Datum		d;
		bool		isnull;
		char	   *s;
		char	   *name;
		char	   *value;

		d = FUNC7(array, 1, &i,
					  -1 /* varlenarray */ ,
					  -1 /* TEXT's typlen */ ,
					  false /* TEXT's typbyval */ ,
					  'i' /* TEXT's typalign */ ,
					  &isnull);

		if (isnull)
			continue;

		s = FUNC6(d);

		FUNC5(s, &name, &value);
		if (!value)
		{
			FUNC8(WARNING,
					(FUNC9(ERRCODE_SYNTAX_ERROR),
					 FUNC10("could not parse setting for parameter \"%s\"",
							name)));
			FUNC11(name);
			continue;
		}

		(void) FUNC13(name, value,
								 context, source,
								 action, true, 0, false);

		FUNC11(name);
		if (value)
			FUNC11(value);
		FUNC12(s);
	}
}