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
typedef  int /*<<< orphan*/  hex_pattern ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 char* default_pattern ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,char**,char*) ; 
 int is_hex_pattern ; 
 void* optarg ; 
 int optind ; 
 scalar_t__ FUNC8 (char const*,char*,unsigned int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (char*,size_t,char const*,int,int) ; 

int FUNC12(int argc, char **argv)
{
	char buf[1024];	/* keep this at 1k or adjust garbage calc below */
	FILE *in = stdin;
	FILE *out = stdout;
	char *ifn = NULL;
	char *ofn = NULL;
	const char *pattern = default_pattern;
	char hex_pattern[128];
	unsigned int hex_buf;
	int c;
	int v0, v1, v2;
	size_t n;
	int p_len, p_off = 0;

	while ((c = FUNC7(argc, argv, "i:o:p:xh")) != -1) {
		switch (c) {
			case 'i':
				ifn = optarg;
				break;
			case 'o':
				ofn = optarg;
				break;
			case 'p':
				pattern = optarg;
				break;
			case 'x':
				is_hex_pattern = true;
				break;
			case 'h':
			default:
				FUNC10();
		}
	}

	if (optind != argc || optind == 1) {
		FUNC4(stderr, "illegal arg \"%s\"\n", argv[optind]);
		FUNC10();
	}

	if (ifn && !(in = FUNC3(ifn, "r"))) {
		FUNC4(stderr, "can not open \"%s\" for reading\n", ifn);
		FUNC10();
	}

	if (ofn && !(out = FUNC3(ofn, "w"))) {
		FUNC4(stderr, "can not open \"%s\" for writing\n", ofn);
		FUNC10();
	}

	p_len = FUNC9(pattern);

	if (p_len == 0) {
		FUNC4(stderr, "pattern cannot be empty\n");
		FUNC10();
	}

	if (is_hex_pattern) {
		int i;

		if ((p_len / 2) > sizeof(hex_pattern)) {
			FUNC4(stderr, "provided hex pattern is too long\n");
			FUNC10();
		}

		if (p_len % 2 != 0) {
			FUNC4(stderr, "the number of characters (hex) is incorrect\n");
			FUNC10();
		}

		for (i = 0; i < (p_len / 2); i++) {
			if (FUNC8(pattern + (i * 2), "%2x", &hex_buf) < 0) {
				FUNC4(stderr, "invalid hex digit around %d\n", i * 2);
				FUNC10();
			}
			hex_pattern[i] = (char)hex_buf;
		}
	}

	while ((n = FUNC5(buf, 1, sizeof(buf), in)) > 0) {
		if (n < sizeof(buf)) {
			if (FUNC1(in)) {
			FREAD_ERROR:
				FUNC4(stderr, "fread error\n");
				return EXIT_FAILURE;
			}
		}

		if (is_hex_pattern) {
			p_off = FUNC11(buf, n, hex_pattern, (p_len / 2),
					 p_off);
		} else {
			p_off = FUNC11(buf, n, pattern, p_len, p_off);
		}

		if (!FUNC6(buf, n, 1, out)) {
		FWRITE_ERROR:
			FUNC4(stderr, "fwrite error\n");
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