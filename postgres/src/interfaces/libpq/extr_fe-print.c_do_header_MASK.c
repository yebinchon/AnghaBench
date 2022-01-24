#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* fieldSep; scalar_t__ html3; scalar_t__ standard; } ;
typedef  TYPE_1__ PQprintOpt ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static char *
FUNC7(FILE *fout, const PQprintOpt *po, const int nFields, int *fieldMax,
		  const char **fieldNames, unsigned char *fieldNotNum,
		  const int fs_len, const PGresult *res)
{
	int			j;				/* for loop index */
	char	   *border = NULL;

	if (po->html3)
		FUNC3("<tr>", fout);
	else
	{
		int			tot = 0;
		int			n = 0;
		char	   *p = NULL;

		for (; n < nFields; n++)
			tot += fieldMax[n] + fs_len + (po->standard ? 2 : 0);
		if (po->standard)
			tot += fs_len * 2 + 2;
		border = FUNC5(tot + 1);
		if (!border)
		{
			FUNC2(&stderr, FUNC4("out of memory\n"));
			FUNC1();
		}
		p = border;
		if (po->standard)
		{
			char	   *fs = po->fieldSep;

			while (*fs++)
				*p++ = '+';
		}
		for (j = 0; j < nFields; j++)
		{
			int			len;

			for (len = fieldMax[j] + (po->standard ? 2 : 0); len--; *p++ = '-');
			if (po->standard || (j + 1) < nFields)
			{
				char	   *fs = po->fieldSep;

				while (*fs++)
					*p++ = '+';
			}
		}
		*p = '\0';
		if (po->standard)
			FUNC2(fout, "%s\n", border);
	}
	if (po->standard)
		FUNC3(po->fieldSep, fout);
	for (j = 0; j < nFields; j++)
	{
		const char *s = FUNC0(res, j);

		if (po->html3)
		{
			FUNC2(fout, "<th align=\"%s\">%s</th>",
					fieldNotNum[j] ? "left" : "right", fieldNames[j]);
		}
		else
		{
			int			n = FUNC6(s);

			if (n > fieldMax[j])
				fieldMax[j] = n;
			if (po->standard)
				FUNC2(fout,
						fieldNotNum[j] ? " %-*s " : " %*s ",
						fieldMax[j], s);
			else
				FUNC2(fout, fieldNotNum[j] ? "%-*s" : "%*s", fieldMax[j], s);
			if (po->standard || (j + 1) < nFields)
				FUNC3(po->fieldSep, fout);
		}
	}
	if (po->html3)
		FUNC3("</tr>\n", fout);
	else
		FUNC2(fout, "\n%s\n", border);
	return border;
}