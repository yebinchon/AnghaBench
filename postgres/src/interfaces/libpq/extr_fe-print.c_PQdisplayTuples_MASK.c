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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DEFAULT_FIELD_SEP ; 
 char* FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 char* FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int FUNC13 (char*) ; 

void
FUNC14(const PGresult *res,
				FILE *fp,		/* where to send the output */
				int fillAlign,	/* pad the fields with spaces */
				const char *fieldSep,	/* field separator */
				int printHeader,	/* display headers? */
				int quiet
)
{
#define DEFAULT_FIELD_SEP " "

	int			i,
				j;
	int			nFields;
	int			nTuples;
	int		   *fLength = NULL;

	if (fieldSep == NULL)
		fieldSep = DEFAULT_FIELD_SEP;

	/* Get some useful info about the results */
	nFields = FUNC3(res);
	nTuples = FUNC4(res);

	if (fp == NULL)
		fp = stdout;

	/* Figure the field lengths to align to */
	/* will be somewhat time consuming for very large results */
	if (fillAlign)
	{
		fLength = (int *) FUNC12(nFields * sizeof(int));
		if (!fLength)
		{
			FUNC8(&stderr, FUNC11("out of memory\n"));
			FUNC5();
		}

		for (j = 0; j < nFields; j++)
		{
			fLength[j] = FUNC13(FUNC0(res, j));
			for (i = 0; i < nTuples; i++)
			{
				int			flen = FUNC1(res, i, j);

				if (flen > fLength[j])
					fLength[j] = flen;
			}
		}
	}

	if (printHeader)
	{
		/* first, print out the attribute names */
		for (i = 0; i < nFields; i++)
		{
			FUNC9(FUNC0(res, i), fp);
			if (fillAlign)
				FUNC7(FUNC13(FUNC0(res, i)), fLength[i], ' ', fp);
			FUNC9(fieldSep, fp);
		}
		FUNC8(fp, "\n");

		/* Underline the attribute names */
		for (i = 0; i < nFields; i++)
		{
			if (fillAlign)
				FUNC7(0, fLength[i], '-', fp);
			FUNC9(fieldSep, fp);
		}
		FUNC8(fp, "\n");
	}

	/* next, print out the instances */
	for (i = 0; i < nTuples; i++)
	{
		for (j = 0; j < nFields; j++)
		{
			FUNC8(fp, "%s", FUNC2(res, i, j));
			if (fillAlign)
				FUNC7(FUNC13(FUNC2(res, i, j)), fLength[j], ' ', fp);
			FUNC9(fieldSep, fp);
		}
		FUNC8(fp, "\n");
	}

	if (!quiet)
		FUNC8(fp, "\nQuery returned %d row%s.\n", FUNC4(res),
				(FUNC4(res) == 1) ? "" : "s");

	FUNC6(fp);

	if (fLength)
		FUNC10(fLength);
}