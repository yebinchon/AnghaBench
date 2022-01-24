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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (int) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char **
FUNC10(const char *path)
{
	FILE	   *infile;
	int			maxlength = 1,
				linelen = 0;
	int			nlines = 0;
	int			n;
	char	  **result;
	char	   *buffer;
	int			c;

	if ((infile = FUNC4(path, "r")) == NULL)
	{
		FUNC6("could not open file \"%s\" for reading: %m", path);
		FUNC0(1);
	}

	/* pass over the file twice - the first time to size the result */

	while ((c = FUNC2(infile)) != EOF)
	{
		linelen++;
		if (c == '\n')
		{
			nlines++;
			if (linelen > maxlength)
				maxlength = linelen;
			linelen = 0;
		}
	}

	/* handle last line without a terminating newline (yuck) */
	if (linelen)
		nlines++;
	if (linelen > maxlength)
		maxlength = linelen;

	/* set up the result and the line buffer */
	result = (char **) FUNC7((nlines + 1) * sizeof(char *));
	buffer = (char *) FUNC7(maxlength + 1);

	/* now reprocess the file and store the lines */
	FUNC9(infile);
	n = 0;
	while (FUNC3(buffer, maxlength + 1, infile) != NULL && n < nlines)
		result[n++] = FUNC8(buffer);

	FUNC1(infile);
	FUNC5(buffer);
	result[n] = NULL;

	return result;
}