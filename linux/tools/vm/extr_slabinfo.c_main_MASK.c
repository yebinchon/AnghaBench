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
 int REG_ICASE ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int extended_totals ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int FUNC4 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  optopt ; 
 int /*<<< orphan*/  opts ; 
 int output_lines ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  page_size ; 
 int /*<<< orphan*/  pattern ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int set_debug ; 
 int show_activity ; 
 int show_alias ; 
 int show_bytes ; 
 int show_empty ; 
 int show_first_alias ; 
 int show_inverted ; 
 int show_numa ; 
 int show_ops ; 
 int show_report ; 
 int show_single_ref ; 
 int show_slab ; 
 int show_totals ; 
 int show_track ; 
 int shrink ; 
 int /*<<< orphan*/  skip_zero ; 
 int sort_active ; 
 int sort_loss ; 
 int sort_partial ; 
 int sort_size ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int unreclaim_only ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int validate ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(int argc, char *argv[])
{
	int c;
	int err;
	char *pattern_source;

	page_size = FUNC5();

	while ((c = FUNC4(argc, argv, "aABd::DefhilLnN:oPrsStTUvXz1",
						opts, NULL)) != -1)
		switch (c) {
		case 'a':
			show_alias = 1;
			break;
		case 'A':
			sort_active = 1;
			break;
		case 'B':
			show_bytes = 1;
			break;
		case 'd':
			set_debug = 1;
			if (!FUNC2(optarg))
				FUNC3("Invalid debug option '%s'\n", optarg);
			break;
		case 'D':
			show_activity = 1;
			break;
		case 'e':
			show_empty = 1;
			break;
		case 'f':
			show_first_alias = 1;
			break;
		case 'h':
			FUNC13();
			return 0;
		case 'i':
			show_inverted = 1;
			break;
		case 'l':
			show_slab = 1;
			break;
		case 'L':
			sort_loss = 1;
			break;
		case 'n':
			show_numa = 1;
			break;
		case 'N':
			if (optarg) {
				output_lines = FUNC1(optarg);
				if (output_lines < 1)
					output_lines = 1;
			}
			break;
		case 'o':
			show_ops = 1;
			break;
		case 'r':
			show_report = 1;
			break;
		case 'P':
			sort_partial = 1;
			break;
		case 's':
			shrink = 1;
			break;
		case 'S':
			sort_size = 1;
			break;
		case 't':
			show_track = 1;
			break;
		case 'T':
			show_totals = 1;
			break;
		case 'U':
			unreclaim_only = 1;
			break;
		case 'v':
			validate = 1;
			break;
		case 'X':
			if (output_lines == -1)
				output_lines = 1;
			extended_totals = 1;
			show_bytes = 1;
			break;
		case 'z':
			skip_zero = 0;
			break;
		case '1':
			show_single_ref = 1;
			break;
		default:
			FUNC3("%s: Invalid option '%c'\n", argv[0], optopt);

	}

	if (!show_slab && !show_alias && !show_track && !show_report
		&& !validate && !shrink && !set_debug && !show_ops)
			show_slab = 1;

	if (argc > optind)
		pattern_source = argv[optind];
	else
		pattern_source = ".*";

	err = FUNC9(&pattern, pattern_source, REG_ICASE|REG_NOSUB);
	if (err)
		FUNC3("%s: Invalid pattern '%s' code %d\n",
			argv[0], pattern_source, err);
	FUNC8();
	if (show_alias) {
		FUNC0();
	} else if (extended_totals) {
		FUNC14();
	} else if (show_totals) {
		FUNC12();
	} else {
		FUNC6();
		FUNC10();
		FUNC11();
		FUNC7();
	}
	return 0;
}