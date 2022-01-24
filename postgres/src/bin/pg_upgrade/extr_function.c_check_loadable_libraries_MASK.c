#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  output_path ;
struct TYPE_7__ {TYPE_1__* dbs; } ;
struct TYPE_10__ {TYPE_2__ dbarr; int /*<<< orphan*/  major_version; } ;
struct TYPE_9__ {int num_libraries; TYPE_3__* libraries; } ;
struct TYPE_8__ {char* name; size_t dbnum; } ;
struct TYPE_6__ {char* db_name; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  LibraryInfo ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MAXPGPATH ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  PG_REPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  library_name_compare ; 
 int /*<<< orphan*/  new_cluster ; 
 TYPE_5__ old_cluster ; 
 TYPE_4__ os_info ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (char*) ; 

void
FUNC23(void)
{
	PGconn	   *conn = FUNC9(&new_cluster, "template1");
	int			libnum;
	int			was_load_failure = false;
	FILE	   *script = NULL;
	bool		found = false;
	char		output_path[MAXPGPATH];

	FUNC15("Checking for presence of required libraries");

	FUNC17(output_path, sizeof(output_path), "loadable_libraries.txt");

	/*
	 * Now we want to sort the library names into order.  This avoids multiple
	 * probes of the same library, and ensures that libraries are probed in a
	 * consistent order, which is important for reproducible behavior if one
	 * library depends on another.
	 */
	FUNC16((void *) os_info.libraries, os_info.num_libraries,
		  sizeof(LibraryInfo), library_name_compare);

	for (libnum = 0; libnum < os_info.num_libraries; libnum++)
	{
		char	   *lib = os_info.libraries[libnum].name;
		int			llen = FUNC22(lib);
		char		cmd[7 + 2 * MAXPGPATH + 1];
		PGresult   *res;

		/* Did the library name change?  Probe it. */
		if (libnum == 0 || FUNC19(lib, os_info.libraries[libnum - 1].name) != 0)
		{
			/*
			 * In Postgres 9.0, Python 3 support was added, and to do that, a
			 * plpython2u language was created with library name plpython2.so
			 * as a symbolic link to plpython.so.  In Postgres 9.1, only the
			 * plpython2.so library was created, and both plpythonu and
			 * plpython2u pointing to it.  For this reason, any reference to
			 * library name "plpython" in an old PG <= 9.1 cluster must look
			 * for "plpython2" in the new cluster.
			 *
			 * For this case, we could check pg_pltemplate, but that only
			 * works for languages, and does not help with function shared
			 * objects, so we just do a general fix.
			 */
			if (FUNC0(old_cluster.major_version) < 901 &&
				FUNC19(lib, "$libdir/plpython") == 0)
			{
				lib = "$libdir/plpython2";
				llen = FUNC22(lib);
			}

			FUNC20(cmd, "LOAD '");
			FUNC3(conn, cmd + FUNC22(cmd), lib, llen, NULL);
			FUNC18(cmd, "'");

			res = FUNC4(conn, cmd);

			if (FUNC6(res) != PGRES_COMMAND_OK)
			{
				found = true;
				was_load_failure = true;

				if (script == NULL && (script = FUNC11(output_path, "w")) == NULL)
					FUNC13("could not open file \"%s\": %s\n",
							 output_path, FUNC21(errno));
				FUNC12(script, FUNC7("could not load library \"%s\": %s"),
						lib,
						FUNC2(conn));
			}
			else
				was_load_failure = false;

			FUNC1(res);
		}

		if (was_load_failure)
			FUNC12(script, FUNC7("In database: %s\n"),
					old_cluster.dbarr.dbs[os_info.libraries[libnum].dbnum].db_name);
	}

	FUNC5(conn);

	if (found)
	{
		FUNC10(script);
		FUNC14(PG_REPORT, "fatal\n");
		FUNC13("Your installation references loadable libraries that are missing from the\n"
				 "new installation.  You can add these libraries to the new installation,\n"
				 "or remove the functions using them from the old installation.  A list of\n"
				 "problem libraries is in the file:\n"
				 "    %s\n\n", output_path);
	}
	else
		FUNC8();
}