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
typedef  int /*<<< orphan*/  serviceFile ;
typedef  int /*<<< orphan*/  homedir ;
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int MAXPGPATH ; 
 char* SYSCONFDIR ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(PQconninfoOption *options, PQExpBuffer errorMessage)
{
	const char *service = FUNC0(options, "service");
	char		serviceFile[MAXPGPATH];
	char	   *env;
	bool		group_found = false;
	int			status;
	struct stat stat_buf;

	/*
	 * We have to special-case the environment variable PGSERVICE here, since
	 * this is and should be called before inserting environment defaults for
	 * other connection options.
	 */
	if (service == NULL)
		service = FUNC1("PGSERVICE");

	/* If no service name given, nothing to do */
	if (service == NULL)
		return 0;

	/*
	 * Try PGSERVICEFILE if specified, else try ~/.pg_service.conf (if that
	 * exists).
	 */
	if ((env = FUNC1("PGSERVICEFILE")) != NULL)
		FUNC8(serviceFile, env, sizeof(serviceFile));
	else
	{
		char		homedir[MAXPGPATH];

		if (!FUNC4(homedir, sizeof(homedir)))
			goto next_file;
		FUNC6(serviceFile, MAXPGPATH, "%s/%s", homedir, ".pg_service.conf");
		if (FUNC7(serviceFile, &stat_buf) != 0)
			goto next_file;
	}

	status = FUNC3(serviceFile, service, options, errorMessage, &group_found);
	if (group_found || status != 0)
		return status;

next_file:

	/*
	 * This could be used by any application so we can't use the binary
	 * location to find our config files.
	 */
	FUNC6(serviceFile, MAXPGPATH, "%s/pg_service.conf",
			 FUNC1("PGSYSCONFDIR") ? FUNC1("PGSYSCONFDIR") : SYSCONFDIR);
	if (FUNC7(serviceFile, &stat_buf) != 0)
		goto last_file;

	status = FUNC3(serviceFile, service, options, errorMessage, &group_found);
	if (status != 0)
		return status;

last_file:
	if (!group_found)
	{
		FUNC5(errorMessage,
						  FUNC2("definition of service \"%s\" not found\n"), service);
		return 3;
	}

	return 0;
}