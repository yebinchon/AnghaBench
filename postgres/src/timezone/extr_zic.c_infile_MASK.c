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
struct lookup {int l_value; } ;
typedef  int lineno_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
#define  LC_LEAP 131 
#define  LC_LINK 130 
#define  LC_RULE 129 
#define  LC_ZONE 128 
 char* FUNC0 (char*) ; 
 struct lookup* FUNC1 (char*,struct lookup const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 char** FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char**,int) ; 
 int /*<<< orphan*/  FUNC12 (char**,int) ; 
 int /*<<< orphan*/  FUNC13 (char**,int) ; 
 int FUNC14 (char**,int) ; 
 int FUNC15 (char**,int) ; 
 struct lookup* leap_line_codes ; 
 char const* leapsec ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 char* FUNC16 (char*,char) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 struct lookup* zi_line_codes ; 

__attribute__((used)) static void
FUNC19(const char *name)
{
	FILE	   *fp;
	char	  **fields;
	char	   *cp;
	const struct lookup *lp;
	int			nfields;
	bool		wantcont;
	lineno_t	num;
	char		buf[BUFSIZ];

	if (FUNC17(name, "-") == 0)
	{
		name = FUNC0("standard input");
		fp = stdin;
	}
	else if ((fp = FUNC7(name, "r")) == NULL)
	{
		const char *e = FUNC18(errno);

		FUNC8(stderr, FUNC0("%s: Cannot open %s: %s\n"),
				progname, name, e);
		FUNC5(EXIT_FAILURE);
	}
	wantcont = false;
	for (num = 1;; ++num)
	{
		FUNC3(name, num);
		if (FUNC6(buf, sizeof buf, fp) != buf)
			break;
		cp = FUNC16(buf, '\n');
		if (cp == NULL)
		{
			FUNC4(FUNC0("line too long"));
			FUNC5(EXIT_FAILURE);
		}
		*cp = '\0';
		fields = FUNC10(buf);
		nfields = 0;
		while (fields[nfields] != NULL)
		{
			static char nada;

			if (FUNC17(fields[nfields], "-") == 0)
				fields[nfields] = &nada;
			++nfields;
		}
		if (nfields == 0)
		{
			/* nothing to do */
		}
		else if (wantcont)
		{
			wantcont = FUNC14(fields, nfields);
		}
		else
		{
			struct lookup const *line_codes
			= name == leapsec ? leap_line_codes : zi_line_codes;

			lp = FUNC1(fields[0], line_codes);
			if (lp == NULL)
				FUNC4(FUNC0("input line of unknown type"));
			else
				switch (lp->l_value)
				{
					case LC_RULE:
						FUNC13(fields, nfields);
						wantcont = false;
						break;
					case LC_ZONE:
						wantcont = FUNC15(fields, nfields);
						break;
					case LC_LINK:
						FUNC12(fields, nfields);
						wantcont = false;
						break;
					case LC_LEAP:
						FUNC11(fields, nfields);
						wantcont = false;
						break;
					default:	/* "cannot happen" */
						FUNC8(stderr,
								FUNC0("%s: panic: Invalid l_value %d\n"),
								progname, lp->l_value);
						FUNC5(EXIT_FAILURE);
				}
		}
		FUNC9(fields);
	}
	FUNC2(fp, NULL, filename);
	if (wantcont)
		FUNC4(FUNC0("expected continuation line not found"));
}