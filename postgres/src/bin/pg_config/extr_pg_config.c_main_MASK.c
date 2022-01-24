#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* switchname; int /*<<< orphan*/  configname; } ;
struct TYPE_5__ {char* name; char* setting; } ;
typedef  TYPE_1__ ConfigData ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_1__* FUNC6 (char*,size_t*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_3__* info_items ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC12 (char*,char*) ; 

int
FUNC13(int argc, char **argv)
{
	ConfigData *configdata;
	size_t		configdata_len;
	char		my_exec_path[MAXPGPATH];
	int			i;
	int			j;

	FUNC10(argv[0], FUNC0("pg_config"));

	progname = FUNC7(argv[0]);

	/* check for --help */
	for (i = 1; i < argc; i++)
	{
		if (FUNC12(argv[i], "--help") == 0 || FUNC12(argv[i], "-?") == 0)
		{
			FUNC8();
			FUNC3(0);
		}
	}

	if (FUNC4(argv[0], my_exec_path) < 0)
	{
		FUNC5(stderr, FUNC1("%s: could not find own program executable\n"), progname);
		FUNC3(1);
	}

	configdata = FUNC6(my_exec_path, &configdata_len);
	/* no arguments -> print everything */
	if (argc < 2)
	{
		for (i = 0; i < configdata_len; i++)
			FUNC9("%s = %s\n", configdata[i].name, configdata[i].setting);
		FUNC3(0);
	}

	/* otherwise print requested items */
	for (i = 1; i < argc; i++)
	{
		for (j = 0; info_items[j].switchname != NULL; j++)
		{
			if (FUNC12(argv[i], info_items[j].switchname) == 0)
			{
				FUNC11(info_items[j].configname,
						  configdata, configdata_len);
				break;
			}
		}
		if (info_items[j].switchname == NULL)
		{
			FUNC5(stderr, FUNC1("%s: invalid argument: %s\n"),
					progname, argv[i]);
			FUNC2();
			FUNC3(1);
		}
	}

	return 0;
}