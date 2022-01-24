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
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int ERR_FATAL ; 
 int ERR_INVALID_IMAGE ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * board ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int FUNC8 (int,char**,char*) ; 
 scalar_t__ invalid_causes_error ; 
 scalar_t__ keep_invalid_images ; 
 char* ofname ; 
 char* optarg ; 
 scalar_t__ opterr ; 
 int optind ; 
 char* optopt ; 
 int FUNC9 (int,char*) ; 
 int FUNC10 (int,char*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  verblevel ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(int argc, char *argv[])
{
	int optinvalid = 0;   /* flag for invalid option */
	int c;
	int res = ERR_FATAL;

	FILE *outfile;

	progname=FUNC4(argv[0]);

	opterr = 0;  /* could not print standard getopt error messages */
	while ( 1 ) {
		optinvalid = 0;

		c = FUNC8(argc, argv, "b:B:c:dhkr:vw:x:");
		if (c == -1)
			break;

		switch (c) {
		case 'b':
		case 'c':
		case 'r':
		case 'x':
			optinvalid = FUNC9(c,optarg);
			break;
		case 'w':
			if (optarg != NULL && *optarg == '-') {
				/* rollback */
				optind--;
				optarg = NULL;
			}
			optinvalid = FUNC9(c,optarg);
			break;
		case 'd':
			invalid_causes_error = 0;
			break;
		case 'k':
			keep_invalid_images = 1;
			break;
		case 'B':
			optinvalid = FUNC10(c,optarg);
			break;
		case 'v':
			verblevel++;
			break;
		case 'h':
			FUNC13(EXIT_SUCCESS);
			break;
		default:
			optinvalid = 1;
			break;
		}
		if (optinvalid != 0 ){
			FUNC1("invalid option: -%c", optopt);
			goto out;
		}
	}

	if (board == NULL) {
		FUNC1("no board specified");
		goto out;
	}

	if (optind == argc) {
		FUNC1("no output file specified");
		goto out;
	}

	ofname = argv[optind++];

	if (optind < argc) {
		FUNC1("invalid option: %s", argv[optind]);
		goto out;
	}

	res = FUNC11();
	if (res == ERR_FATAL)
		goto out;

	if (res == ERR_INVALID_IMAGE) {
		if (invalid_causes_error)
			res = ERR_FATAL;

		if (keep_invalid_images == 0) {
			FUNC3("generation of invalid images \"%s\" disabled", ofname);
			goto out;
		}

		FUNC3("generating invalid image: \"%s\"", ofname);
	}

	outfile = FUNC7(ofname, "w");
	if (outfile == NULL) {
		FUNC2("could not open \"%s\" for writing", ofname);
		res = ERR_FATAL;
		goto out;
	}

	if (FUNC14(outfile) != 0) {
		res = ERR_FATAL;
		goto out_flush;
	}

	FUNC0(1,"Image file %s completed.", ofname);

out_flush:
	FUNC6(outfile);
	FUNC5(outfile);
	if (res == ERR_FATAL) {
		FUNC12(ofname);
	}
out:
	if (res == ERR_FATAL)
		return EXIT_FAILURE;

	return EXIT_SUCCESS;
}