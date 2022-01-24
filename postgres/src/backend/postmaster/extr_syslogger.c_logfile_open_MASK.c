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
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  LOG ; 
 int Log_file_mode ; 
 int /*<<< orphan*/  PG_IOLBF ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  _O_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *
FUNC8(const char *filename, const char *mode, bool allow_errors)
{
	FILE	   *fh;
	mode_t		oumask;

	/*
	 * Note we do not let Log_file_mode disable IWUSR, since we certainly want
	 * to be able to write the files ourselves.
	 */
	oumask = FUNC7((mode_t) ((~(Log_file_mode | S_IWUSR)) & (S_IRWXU | S_IRWXG | S_IRWXO)));
	fh = FUNC5(filename, mode);
	FUNC7(oumask);

	if (fh)
	{
		FUNC6(fh, NULL, PG_IOLBF, 0);

#ifdef WIN32
		/* use CRLF line endings on Windows */
		_setmode(_fileno(fh), _O_TEXT);
#endif
	}
	else
	{
		int			save_errno = errno;

		FUNC2(allow_errors ? LOG : FATAL,
				(FUNC3(),
				 FUNC4("could not open log file \"%s\": %m",
						filename)));
		errno = save_errno;
	}

	return fh;
}