#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* type; int (* handler ) (char*) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  default_mtime ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* file_handler_table ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**,int) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int FUNC14 (int argc, char *argv[])
{
	FILE *cpio_list;
	char line[LINE_SIZE];
	char *args, *type;
	int ec = 0;
	int line_nr = 0;
	const char *filename;

	default_mtime = FUNC12(NULL);
	while (1) {
		int opt = FUNC5(argc, argv, "t:h");
		char *invalid;

		if (opt == -1)
			break;
		switch (opt) {
		case 't':
			default_mtime = FUNC10(optarg, &invalid, 10);
			if (!*optarg || *invalid) {
				FUNC4(stderr, "Invalid timestamp: %s\n",
						optarg);
				FUNC13(argv[0]);
				FUNC1(1);
			}
			break;
		case 'h':
		case '?':
			FUNC13(argv[0]);
			FUNC1(opt == 'h' ? 0 : 1);
		}
	}

	if (argc - optind != 1) {
		FUNC13(argv[0]);
		FUNC1(1);
	}
	filename = argv[optind];
	if (!FUNC6(filename, "-"))
		cpio_list = stdin;
	else if (!(cpio_list = FUNC3(filename, "r"))) {
		FUNC4(stderr, "ERROR: unable to open '%s': %s\n\n",
			filename, FUNC7(errno));
		FUNC13(argv[0]);
		FUNC1(1);
	}

	while (FUNC2(line, LINE_SIZE, cpio_list)) {
		int type_idx;
		size_t slen = FUNC8(line);

		line_nr++;

		if ('#' == *line) {
			/* comment - skip to next line */
			continue;
		}

		if (! (type = FUNC9(line, " \t"))) {
			FUNC4(stderr,
				"ERROR: incorrect format, could not locate file type line %d: '%s'\n",
				line_nr, line);
			ec = -1;
			break;
		}

		if ('\n' == *type) {
			/* a blank line */
			continue;
		}

		if (slen == FUNC8(type)) {
			/* must be an empty line */
			continue;
		}

		if (! (args = FUNC9(NULL, "\n"))) {
			FUNC4(stderr,
				"ERROR: incorrect format, newline required line %d: '%s'\n",
				line_nr, line);
			ec = -1;
		}

		for (type_idx = 0; file_handler_table[type_idx].type; type_idx++) {
			int rc;
			if (! FUNC6(line, file_handler_table[type_idx].type)) {
				if ((rc = file_handler_table[type_idx].handler(args))) {
					ec = rc;
					FUNC4(stderr, " line %d\n", line_nr);
				}
				break;
			}
		}

		if (NULL == file_handler_table[type_idx].type) {
			FUNC4(stderr, "unknown file type line %d: '%s'\n",
				line_nr, line);
		}
	}
	if (ec == 0)
		FUNC0();

	FUNC1(ec);
}