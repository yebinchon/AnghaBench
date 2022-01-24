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

/* Variables and functions */
 int /*<<< orphan*/  PG_MAJORVERSION ; 
 int /*<<< orphan*/  PG_VERSION ; 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(char *filename)
{
	char	   *psqlrc_minor,
			   *psqlrc_major;

#if defined(WIN32) && (!defined(__MINGW32__))
#define R_OK 4
#endif

	psqlrc_minor = FUNC3("%s-%s", filename, PG_VERSION);
	psqlrc_major = FUNC3("%s-%s", filename, PG_MAJORVERSION);

	/* check for minor version first, then major, then no version */
	if (FUNC0(psqlrc_minor, R_OK) == 0)
		(void) FUNC2(psqlrc_minor, false);
	else if (FUNC0(psqlrc_major, R_OK) == 0)
		(void) FUNC2(psqlrc_major, false);
	else if (FUNC0(filename, R_OK) == 0)
		(void) FUNC2(filename, false);

	FUNC1(psqlrc_minor);
	FUNC1(psqlrc_major);
}