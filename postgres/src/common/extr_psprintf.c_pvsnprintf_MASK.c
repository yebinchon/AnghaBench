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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int MaxAllocSize ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

size_t
FUNC10(char *buf, size_t len, const char *fmt, va_list args)
{
	int			nprinted;

	nprinted = FUNC9(buf, len, fmt, args);

	/* We assume failure means the fmt is bogus, hence hard failure is OK */
	if (FUNC8(nprinted < 0))
	{
#ifndef FRONTEND
		FUNC1(ERROR, "vsnprintf failed: %m with format string \"%s\"", fmt);
#else
		fprintf(stderr, "vsnprintf failed: %s with format string \"%s\"\n",
				strerror(errno), fmt);
		exit(EXIT_FAILURE);
#endif
	}

	if ((size_t) nprinted < len)
	{
		/* Success.  Note nprinted does not include trailing null. */
		return (size_t) nprinted;
	}

	/*
	 * We assume a C99-compliant vsnprintf, so believe its estimate of the
	 * required space, and add one for the trailing null.  (If it's wrong, the
	 * logic will still work, but we may loop multiple times.)
	 *
	 * Choke if the required space would exceed MaxAllocSize.  Note we use
	 * this palloc-oriented overflow limit even when in frontend.
	 */
	if (FUNC8((size_t) nprinted > MaxAllocSize - 1))
	{
#ifndef FRONTEND
		FUNC2(ERROR,
				(FUNC3(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC4("out of memory")));
#else
		fprintf(stderr, _("out of memory\n"));
		exit(EXIT_FAILURE);
#endif
	}

	return nprinted + 1;
}