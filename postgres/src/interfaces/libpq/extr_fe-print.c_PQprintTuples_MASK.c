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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC10(const PGresult *res,
			  FILE *fout,		/* output stream */
			  int PrintAttNames,	/* print attribute names or not */
			  int TerseOutput,	/* delimiter bars or not? */
			  int colWidth		/* width of column, if 0, use variable width */
)
{
	int			nFields;
	int			nTups;
	int			i,
				j;
	char		formatString[80];
	char	   *tborder = NULL;

	nFields = FUNC2(res);
	nTups = FUNC3(res);

	if (colWidth > 0)
		FUNC9(formatString, "%%s %%-%ds", colWidth);
	else
		FUNC9(formatString, "%%s %%s");

	if (nFields > 0)
	{							/* only print rows with at least 1 field.  */

		if (!TerseOutput)
		{
			int			width;

			width = nFields * 14;
			tborder = (char *) FUNC8(width + 1);
			if (!tborder)
			{
				FUNC5(&stderr, FUNC7("out of memory\n"));
				FUNC4();
			}
			for (i = 0; i < width; i++)
				tborder[i] = '-';
			tborder[width] = '\0';
			FUNC5(fout, "%s\n", tborder);
		}

		for (i = 0; i < nFields; i++)
		{
			if (PrintAttNames)
			{
				FUNC5(fout, formatString,
						TerseOutput ? "" : "|",
						FUNC0(res, i));
			}
		}

		if (PrintAttNames)
		{
			if (TerseOutput)
				FUNC5(fout, "\n");
			else
				FUNC5(fout, "|\n%s\n", tborder);
		}

		for (i = 0; i < nTups; i++)
		{
			for (j = 0; j < nFields; j++)
			{
				const char *pval = FUNC1(res, i, j);

				FUNC5(fout, formatString,
						TerseOutput ? "" : "|",
						pval ? pval : "");
			}
			if (TerseOutput)
				FUNC5(fout, "\n");
			else
				FUNC5(fout, "|\n%s\n", tborder);
		}
	}

	if (tborder)
		FUNC6(tborder);
}