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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_IN_USE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FILE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InRecovery ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TABLESPACE_VERSION_DIRECTORY ; 
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  pg_dir_create_mode ; 
 char* FUNC9 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 

__attribute__((used)) static void
FUNC14(const char *location, const Oid tablespaceoid)
{
	char	   *linkloc;
	char	   *location_with_version_dir;
	struct stat st;

	linkloc = FUNC9("pg_tblspc/%u", tablespaceoid);
	location_with_version_dir = FUNC9("%s/%s", location,
										 TABLESPACE_VERSION_DIRECTORY);

	/*
	 * Attempt to coerce target directory to safe permissions.  If this fails,
	 * it doesn't exist or has the wrong owner.
	 */
	if (FUNC2(location, pg_dir_create_mode) != 0)
	{
		if (errno == ENOENT)
			FUNC3(ERROR,
					(FUNC4(ERRCODE_UNDEFINED_FILE),
					 FUNC7("directory \"%s\" does not exist", location),
					 InRecovery ? FUNC6("Create this directory for the tablespace before "
										  "restarting the server.") : 0));
		else
			FUNC3(ERROR,
					(FUNC5(),
					 FUNC7("could not set permissions on directory \"%s\": %m",
							location)));
	}

	if (InRecovery)
	{
		/*
		 * Our theory for replaying a CREATE is to forcibly drop the target
		 * subdirectory if present, and then recreate it. This may be more
		 * work than needed, but it is simple to implement.
		 */
		if (FUNC12(location_with_version_dir, &st) == 0 && FUNC1(st.st_mode))
		{
			if (!FUNC11(location_with_version_dir, true))
				/* If this failed, MakePGDirectory() below is going to error. */
				FUNC3(WARNING,
						(FUNC7("some useless files may be left behind in old database directory \"%s\"",
								location_with_version_dir)));
		}
	}

	/*
	 * The creation of the version directory prevents more than one tablespace
	 * in a single location.
	 */
	if (FUNC0(location_with_version_dir) < 0)
	{
		if (errno == EEXIST)
			FUNC3(ERROR,
					(FUNC4(ERRCODE_OBJECT_IN_USE),
					 FUNC7("directory \"%s\" already in use as a tablespace",
							location_with_version_dir)));
		else
			FUNC3(ERROR,
					(FUNC5(),
					 FUNC7("could not create directory \"%s\": %m",
							location_with_version_dir)));
	}

	/*
	 * In recovery, remove old symlink, in case it points to the wrong place.
	 */
	if (InRecovery)
		FUNC10(linkloc);

	/*
	 * Create the symlink under PGDATA
	 */
	if (FUNC13(location, linkloc) < 0)
		FUNC3(ERROR,
				(FUNC5(),
				 FUNC7("could not create symbolic link \"%s\": %m",
						linkloc)));

	FUNC8(linkloc);
	FUNC8(location_with_version_dir);
}