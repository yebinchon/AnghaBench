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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(int argc, char **argv)
{
	char buf[1024];	/* keep this at 1k or adjust garbage calc below */
	FILE *in = stdin, *out = stdout;
	char *ifn = NULL, *ofn = NULL;
	size_t n;
	int c, first_block = 1;

	while ((c = FUNC8(argc, argv, "i:o:h")) != -1) {
		switch (c) {
			case 'i':
				ifn = optarg;
				break;
			case 'o':
				ofn = optarg;
				break;
			case 'h':
			default:
				FUNC9();
		}
	}

	if (optind != argc || optind == 1) {
		FUNC5(stderr, "illegal arg \"%s\"\n", argv[optind]);
		FUNC9();
	}

	if (ifn && !(in = FUNC4(ifn, "r"))) {
		FUNC5(stderr, "can not open \"%s\" for reading\n", ifn);
		FUNC9();
	}

	if (ofn && !(out = FUNC4(ofn, "w"))) {
		FUNC5(stderr, "can not open \"%s\" for writing\n", ofn);
		FUNC9();
	}

	while ((n = FUNC6(buf, 1, sizeof(buf), in)) > 0) {
		if (n < sizeof(buf)) {
			if (FUNC1(in)) {
			FREAD_ERROR:
				FUNC5(stderr, "fread error\n");
				return EXIT_FAILURE;
			}
		}

		if (first_block && n >= 256) {
			FUNC3(buf);
			first_block = 0;
		}

		if (!FUNC7(buf, n, 1, out)) {
		FWRITE_ERROR:
			FUNC5(stderr, "fwrite error\n");
			return EXIT_FAILURE;
		}
	}

	if (FUNC1(in)) {
		goto FREAD_ERROR;
	}

	if (FUNC2(out)) {
		goto FWRITE_ERROR;
	}

	FUNC0(in);
	FUNC0(out);

	return EXIT_SUCCESS;
}