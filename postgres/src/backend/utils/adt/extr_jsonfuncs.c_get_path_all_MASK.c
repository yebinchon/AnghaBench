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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long INT_MAX ; 
 long INT_MIN ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TEXTOID ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int**,int*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char**,int*,int,int) ; 
 void* FUNC9 (int) ; 
 long FUNC10 (char*,char**,int) ; 

__attribute__((used)) static Datum
FUNC11(FunctionCallInfo fcinfo, bool as_text)
{
	text	   *json = FUNC2(0);
	ArrayType  *path = FUNC1(1);
	text	   *result;
	Datum	   *pathtext;
	bool	   *pathnulls;
	int			npath;
	char	  **tpath;
	int		   *ipath;
	int			i;

	/*
	 * If the array contains any null elements, return NULL, on the grounds
	 * that you'd have gotten NULL if any RHS value were NULL in a nested
	 * series of applications of the -> operator.  (Note: because we also
	 * return NULL for error cases such as no-such-field, this is true
	 * regardless of the contents of the rest of the array.)
	 */
	if (FUNC6(path))
		FUNC3();

	FUNC7(path, TEXTOID, -1, false, 'i',
					  &pathtext, &pathnulls, &npath);

	tpath = FUNC9(npath * sizeof(char *));
	ipath = FUNC9(npath * sizeof(int));

	for (i = 0; i < npath; i++)
	{
		FUNC0(!pathnulls[i]);
		tpath[i] = FUNC5(pathtext[i]);

		/*
		 * we have no idea at this stage what structure the document is so
		 * just convert anything in the path that we can to an integer and set
		 * all the other integers to INT_MIN which will never match.
		 */
		if (*tpath[i] != '\0')
		{
			long		ind;
			char	   *endptr;

			errno = 0;
			ind = FUNC10(tpath[i], &endptr, 10);
			if (*endptr == '\0' && errno == 0 && ind <= INT_MAX && ind >= INT_MIN)
				ipath[i] = (int) ind;
			else
				ipath[i] = INT_MIN;
		}
		else
			ipath[i] = INT_MIN;
	}

	result = FUNC8(json, tpath, ipath, npath, as_text);

	if (result != NULL)
		FUNC4(result);
	else
		FUNC3();
}