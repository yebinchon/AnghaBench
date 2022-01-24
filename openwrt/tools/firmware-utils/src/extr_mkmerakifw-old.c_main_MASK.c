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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * board ; 
 int /*<<< orphan*/ * board_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,char**,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* optarg ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int strip_padding ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int FUNC12(int argc, char *argv[])
{
	int ret = EXIT_FAILURE;
	char *ofname = NULL, *ifname = NULL;
	FILE *out, *in;
	size_t klen;

	progname = FUNC2(argv[0]);

	while (1) {
		int c;

		c = FUNC8(argc, argv, "B:i:o:sh");
		if (c == -1)
			break;

		switch (c) {
		case 'B':
			board_id = optarg;
			break;
		case 'i':
			ifname = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 's':
			strip_padding = true;
			break;
		case 'h':
			FUNC11(EXIT_SUCCESS);
			break;
		default:
			FUNC11(EXIT_FAILURE);
			break;
		}
	}

	if (board_id == NULL) {
		FUNC0("no board specified");
		goto err;
	}

	board = FUNC4(board_id);
	if (board == NULL) {
		FUNC0("unknown board \"%s\"", board_id);
		goto err;
	}

	if (ifname == NULL) {
		FUNC0("no input file specified");
		goto err;
	}

	if (ofname == NULL) {
		FUNC0("no output file specified");
		goto err;
	}

	in = FUNC5(ifname, "r");
	if (in == NULL) {
		FUNC1("could not open \"%s\" for reading: %s", ifname);
		goto err;
	}

	/* Get kernel length */
	FUNC6(in, 0, SEEK_END);
	klen = FUNC7(in);
	FUNC10(in);

	out = FUNC5(ofname, "w");
	if (out == NULL) {
		FUNC1("could not open \"%s\" for writing: %s", ofname);
		goto err_close_in;
	}

	ret = FUNC9(board, klen, out, in);
	FUNC3(out);

err_close_in:
	FUNC3(in);

err:
	return ret;
}