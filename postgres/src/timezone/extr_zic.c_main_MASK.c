#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ptrdiff_t ;
struct TYPE_5__ {char* l_filename; int l_linenum; char* l_from; char* l_to; } ;
struct TYPE_4__ {int /*<<< orphan*/ * z_name; } ;

/* Variables and functions */
 int EOF ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 char* PG_VERSION ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* TZDEFAULT ; 
 char* TZDEFRULES ; 
 char* ZIC_BLOAT_DEFAULT ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int bloat ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* directory ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ errors ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC12 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* lcltime ; 
 char* leapsec ; 
 TYPE_3__* links ; 
 int nlinks ; 
 int noise ; 
 int nzones ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int print_abbrevs ; 
 int /*<<< orphan*/  print_cutoff ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 char* progname ; 
 char* psxrules ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 void* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* tzdefault ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 scalar_t__ warnings ; 
 char* yitcommand ; 
 int /*<<< orphan*/  zic_t ; 
 TYPE_1__* zones ; 

int
FUNC23(int argc, char **argv)
{
	int			c,
				k;
	ptrdiff_t	i,
				j;
	bool		timerange_given = false;

#ifndef WIN32
	FUNC20(FUNC20(S_IWGRP | S_IWOTH) | (S_IWGRP | S_IWOTH));
#endif
	progname = argv[0];
	if (FUNC0(zic_t) <64)
	{
		FUNC11(stderr, "%s: %s\n", progname,
				FUNC1("wild compilation-time specification of zic_t"));
		return EXIT_FAILURE;
	}
	for (k = 1; k < argc; k++)
		if (FUNC16(argv[k], "--version") == 0)
		{
			FUNC15("zic %s\n", PG_VERSION);
			FUNC5(stdout, NULL, NULL);
			return EXIT_SUCCESS;
		}
		else if (FUNC16(argv[k], "--help") == 0)
		{
			FUNC21(stdout, EXIT_SUCCESS);
		}
	while ((c = FUNC12(argc, argv, "b:d:l:L:p:Pr:st:vy:")) != EOF && c != -1)
		switch (c)
		{
			default:
				FUNC21(stderr, EXIT_FAILURE);
			case 'b':
				if (FUNC16(optarg, "slim") == 0)
				{
					if (0 < bloat)
						FUNC8(FUNC1("incompatible -b options"));
					bloat = -1;
				}
				else if (FUNC16(optarg, "fat") == 0)
				{
					if (bloat < 0)
						FUNC8(FUNC1("incompatible -b options"));
					bloat = 1;
				}
				else
					FUNC8(FUNC1("invalid option: -b '%s'"), optarg);
				break;
			case 'd':
				if (directory == NULL)
					directory = FUNC17(optarg);
				else
				{
					FUNC11(stderr,
							FUNC1("%s: More than one -d option specified\n"),
							progname);
					return EXIT_FAILURE;
				}
				break;
			case 'l':
				if (lcltime == NULL)
					lcltime = FUNC17(optarg);
				else
				{
					FUNC11(stderr,
							FUNC1("%s: More than one -l option specified\n"),
							progname);
					return EXIT_FAILURE;
				}
				break;
			case 'p':
				if (psxrules == NULL)
					psxrules = FUNC17(optarg);
				else
				{
					FUNC11(stderr,
							FUNC1("%s: More than one -p option specified\n"),
							progname);
					return EXIT_FAILURE;
				}
				break;
			case 't':
				if (tzdefault != NULL)
				{
					FUNC11(stderr,
							FUNC1("%s: More than one -t option"
							  " specified\n"),
							progname);
					return EXIT_FAILURE;
				}
				tzdefault = optarg;
				break;
			case 'y':
				if (yitcommand == NULL)
				{
					FUNC22(FUNC1("-y is obsolescent"));
					yitcommand = FUNC17(optarg);
				}
				else
				{
					FUNC11(stderr,
							FUNC1("%s: More than one -y option specified\n"),
							progname);
					return EXIT_FAILURE;
				}
				break;
			case 'L':
				if (leapsec == NULL)
					leapsec = FUNC17(optarg);
				else
				{
					FUNC11(stderr,
							FUNC1("%s: More than one -L option specified\n"),
							progname);
					return EXIT_FAILURE;
				}
				break;
			case 'v':
				noise = true;
				break;
			case 'P':
				print_abbrevs = true;
				print_cutoff = FUNC18(NULL);
				break;
			case 'r':
				if (timerange_given)
				{
					FUNC11(stderr,
							FUNC1("%s: More than one -r option specified\n"),
							progname);
					return EXIT_FAILURE;
				}
				if (!FUNC19(optarg))
				{
					FUNC11(stderr,
							FUNC1("%s: invalid time range: %s\n"),
							progname, optarg);
					return EXIT_FAILURE;
				}
				timerange_given = true;
				break;
			case 's':
				FUNC22(FUNC1("-s ignored"));
				break;
		}
	if (optind == argc - 1 && FUNC16(argv[optind], "=") == 0)
		FUNC21(stderr, EXIT_FAILURE);	/* usage message by request */
	if (bloat == 0)
		bloat = FUNC16(ZIC_BLOAT_DEFAULT, "slim") == 0 ? -1 : 1;
	if (directory == NULL)
		directory = "data";
	if (tzdefault == NULL)
		tzdefault = TZDEFAULT;
	if (yitcommand == NULL)
		yitcommand = "yearistype";

	if (optind < argc && leapsec != NULL)
	{
		FUNC13(leapsec);
		FUNC2();
	}

	for (k = optind; k < argc; k++)
		FUNC13(argv[k]);
	if (errors)
		return EXIT_FAILURE;
	FUNC3();
	FUNC4(directory);
	for (i = 0; i < nzones; i = j)
	{
		/*
		 * Find the next non-continuation zone entry.
		 */
		for (j = i + 1; j < nzones && zones[j].z_name == NULL; ++j)
			continue;
		FUNC14(&zones[i], j - i);
	}

	/*
	 * Make links.
	 */
	for (i = 0; i < nlinks; ++i)
	{
		FUNC7(links[i].l_filename, links[i].l_linenum);
		FUNC6(links[i].l_from, links[i].l_to, false);
		if (noise)
			for (j = 0; j < nlinks; ++j)
				if (FUNC16(links[i].l_to,
						   links[j].l_from) == 0)
					FUNC22(FUNC1("link to link"));
	}
	if (lcltime != NULL)
	{
		FUNC7(FUNC1("command line"), 1);
		FUNC6(lcltime, tzdefault, true);
	}
	if (psxrules != NULL)
	{
		FUNC7(FUNC1("command line"), 1);
		FUNC6(psxrules, TZDEFRULES, true);
	}
	if (warnings && (FUNC10(stderr) || FUNC9(stderr) != 0))
		return EXIT_FAILURE;
	return errors ? EXIT_FAILURE : EXIT_SUCCESS;
}