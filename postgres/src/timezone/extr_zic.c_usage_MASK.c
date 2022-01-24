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
 int EXIT_SUCCESS ; 
 char* PACKAGE_BUGREPORT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 
 char* progname ; 

__attribute__((used)) static void
FUNC4(FILE *stream, int status)
{
	FUNC3(stream,
			FUNC0("%s: usage is %s [ --version ] [ --help ] [ -v ] [ -P ] \\\n"
			  "\t[ -b {slim|fat} ] [ -d directory ] [ -l localtime ]"
			  " [ -L leapseconds ] \\\n"
			  "\t[ -p posixrules ] [ -r '[@lo][/@hi]' ] [ -t localtime-link ] \\\n"
			  "\t[ filename ... ]\n\n"
			  "Report bugs to %s.\n"),
			progname, progname, PACKAGE_BUGREPORT);
	if (status == EXIT_SUCCESS)
		FUNC1(stream, NULL, NULL);
	FUNC2(status);
}