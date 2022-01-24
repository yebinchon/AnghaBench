#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* bindir; } ;
struct TYPE_12__ {int /*<<< orphan*/  major_version; } ;
struct TYPE_11__ {int /*<<< orphan*/  user; scalar_t__ user_specified; } ;
struct TYPE_10__ {char* data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* ECHO_BLANK ; 
 char* ECHO_QUOTE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRIPT_EXT ; 
 int /*<<< orphan*/  SCRIPT_PREFIX ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_5__ new_cluster ; 
 TYPE_4__ old_cluster ; 
 TYPE_3__ os_info ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

void
FUNC15(char **analyze_script_file_name)
{
	FILE	   *script = NULL;
	PQExpBufferData user_specification;

	FUNC11("Creating script to analyze new cluster");

	FUNC9(&user_specification);
	if (os_info.user_specified)
	{
		FUNC2(&user_specification, "-U ");
		FUNC3(&user_specification, os_info.user);
		FUNC1(&user_specification, ' ');
	}

	*analyze_script_file_name = FUNC12("%sanalyze_new_cluster.%s",
										 SCRIPT_PREFIX, SCRIPT_EXT);

	if ((script = FUNC7(*analyze_script_file_name, "w")) == NULL)
		FUNC10("could not open file \"%s\": %s\n",
				 *analyze_script_file_name, FUNC13(errno));

#ifndef WIN32
	/* add shebang header */
	FUNC8(script, "#!/bin/sh\n\n");
#else
	/* suppress command echoing */
	fprintf(script, "@echo off\n");
#endif

	FUNC8(script, "echo %sThis script will generate minimal optimizer statistics rapidly%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo %sso your system is usable, and then gather statistics twice more%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo %swith increasing accuracy.  When it is done, your system will%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo %shave the default level of optimizer statistics.%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo%s\n\n", ECHO_BLANK);

	FUNC8(script, "echo %sIf you have used ALTER TABLE to modify the statistics target for%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo %sany tables, you might want to remove them and restore them after%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo %srunning this script because they will delay fast statistics generation.%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo%s\n\n", ECHO_BLANK);

	FUNC8(script, "echo %sIf you would like default statistics as quickly as possible, cancel%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo %sthis script and run:%s\n",
			ECHO_QUOTE, ECHO_QUOTE);
	FUNC8(script, "echo %s    \"%s/vacuumdb\" %s--all %s%s\n", ECHO_QUOTE,
			new_cluster.bindir, user_specification.data,
	/* Did we copy the free space files? */
			(FUNC0(old_cluster.major_version) >= 804) ?
			"--analyze-only" : "--analyze", ECHO_QUOTE);
	FUNC8(script, "echo%s\n\n", ECHO_BLANK);

	FUNC8(script, "\"%s/vacuumdb\" %s--all --analyze-in-stages\n",
			new_cluster.bindir, user_specification.data);
	/* Did we copy the free space files? */
	if (FUNC0(old_cluster.major_version) < 804)
		FUNC8(script, "\"%s/vacuumdb\" %s--all\n", new_cluster.bindir,
				user_specification.data);

	FUNC8(script, "echo%s\n\n", ECHO_BLANK);
	FUNC8(script, "echo %sDone%s\n",
			ECHO_QUOTE, ECHO_QUOTE);

	FUNC6(script);

#ifndef WIN32
	if (FUNC5(*analyze_script_file_name, S_IRWXU) != 0)
		FUNC10("could not add execute permission to file \"%s\": %s\n",
				 *analyze_script_file_name, FUNC13(errno));
#endif

	FUNC14(&user_specification);

	FUNC4();
}