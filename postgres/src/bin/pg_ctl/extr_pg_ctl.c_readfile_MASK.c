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
struct stat {int st_size; } ;

/* Variables and functions */
 int O_RDONLY ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static char **
FUNC7(const char *path, int *numlines)
{
	int			fd;
	int			nlines;
	char	  **result;
	char	   *buffer;
	char	   *linebegin;
	int			i;
	int			n;
	int			len;
	struct stat statbuf;

	*numlines = 0;				/* in case of failure or empty file */

	/*
	 * Slurp the file into memory.
	 *
	 * The file can change concurrently, so we read the whole file into memory
	 * with a single read() call. That's not guaranteed to get an atomic
	 * snapshot, but in practice, for a small file, it's close enough for the
	 * current use.
	 */
	fd = FUNC4(path, O_RDONLY | PG_BINARY, 0);
	if (fd < 0)
		return NULL;
	if (FUNC2(fd, &statbuf) < 0)
	{
		FUNC0(fd);
		return NULL;
	}
	if (statbuf.st_size == 0)
	{
		/* empty file */
		FUNC0(fd);
		result = (char **) FUNC5(sizeof(char *));
		*result = NULL;
		return result;
	}
	buffer = FUNC5(statbuf.st_size + 1);

	len = FUNC6(fd, buffer, statbuf.st_size + 1);
	FUNC0(fd);
	if (len != statbuf.st_size)
	{
		/* oops, the file size changed between fstat and read */
		FUNC1(buffer);
		return NULL;
	}

	/*
	 * Count newlines. We expect there to be a newline after each full line,
	 * including one at the end of file. If there isn't a newline at the end,
	 * any characters after the last newline will be ignored.
	 */
	nlines = 0;
	for (i = 0; i < len; i++)
	{
		if (buffer[i] == '\n')
			nlines++;
	}

	/* set up the result buffer */
	result = (char **) FUNC5((nlines + 1) * sizeof(char *));
	*numlines = nlines;

	/* now split the buffer into lines */
	linebegin = buffer;
	n = 0;
	for (i = 0; i < len; i++)
	{
		if (buffer[i] == '\n')
		{
			int			slen = &buffer[i] - linebegin;
			char	   *linebuf = FUNC5(slen + 1);

			FUNC3(linebuf, linebegin, slen);
			/* we already dropped the \n, but get rid of any \r too */
			if (slen > 0 && linebuf[slen - 1] == '\r')
				slen--;
			linebuf[slen] = '\0';
			result[n++] = linebuf;
			linebegin = &buffer[i + 1];
		}
	}
	result[n] = NULL;

	FUNC1(buffer);

	return result;
}