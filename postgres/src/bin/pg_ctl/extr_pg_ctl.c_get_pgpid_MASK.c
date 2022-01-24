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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  pgpid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,long*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pg_data ; 
 int /*<<< orphan*/  pid_file ; 
 int /*<<< orphan*/  progname ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  version_file ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static pgpid_t
FUNC10(bool is_status_request)
{
	FILE	   *pidf;
	long		pid;
	struct stat statbuf;

	if (FUNC7(pg_data, &statbuf) != 0)
	{
		if (errno == ENOENT)
			FUNC9(FUNC0("%s: directory \"%s\" does not exist\n"), progname,
						 pg_data);
		else
			FUNC9(FUNC0("%s: could not access directory \"%s\": %s\n"), progname,
						 pg_data, FUNC8(errno));

		/*
		 * The Linux Standard Base Core Specification 3.1 says this should
		 * return '4, program or service status is unknown'
		 * https://refspecs.linuxbase.org/LSB_3.1.0/LSB-Core-generic/LSB-Core-generic/iniscrptact.html
		 */
		FUNC1(is_status_request ? 4 : 1);
	}

	if (FUNC7(version_file, &statbuf) != 0 && errno == ENOENT)
	{
		FUNC9(FUNC0("%s: directory \"%s\" is not a database cluster directory\n"),
					 progname, pg_data);
		FUNC1(is_status_request ? 4 : 1);
	}

	pidf = FUNC4(pid_file, "r");
	if (pidf == NULL)
	{
		/* No pid file, not an error on startup */
		if (errno == ENOENT)
			return 0;
		else
		{
			FUNC9(FUNC0("%s: could not open PID file \"%s\": %s\n"),
						 progname, pid_file, FUNC8(errno));
			FUNC1(1);
		}
	}
	if (FUNC5(pidf, "%ld", &pid) != 1)
	{
		/* Is the file empty? */
		if (FUNC6(pidf) == 0 && FUNC3(pidf))
			FUNC9(FUNC0("%s: the PID file \"%s\" is empty\n"),
						 progname, pid_file);
		else
			FUNC9(FUNC0("%s: invalid data in PID file \"%s\"\n"),
						 progname, pid_file);
		FUNC1(1);
	}
	FUNC2(pidf);
	return (pgpid_t) pid;
}