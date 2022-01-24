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
typedef  int /*<<< orphan*/  uint32_t ;
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/ * ifname ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/ * ofname ; 
 int /*<<< orphan*/ * optarg ; 
 int /*<<< orphan*/  progname ; 
 int FUNC13 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

int FUNC16(int argc, char *argv[])
{
	int res = EXIT_FAILURE;
	int buflen;
	int err;
	struct stat st;
	char *buf;
	uint32_t *hdr;
	uint32_t crc;

	FILE *outfile, *infile;

	progname = FUNC3(argv[0]);

	while ( 1 ) {
		int c;

		c = FUNC11(argc, argv, "i:o:h");
		if (c == -1)
			break;

		switch (c) {
		case 'i':
			ifname = optarg;
			break;
		case 'o':
			ofname = optarg;
			break;
		case 'h':
			FUNC15(EXIT_SUCCESS);
			break;
		default:
			FUNC15(EXIT_FAILURE);
			break;
		}
	}

	if (ifname == NULL) {
		FUNC0("no input file specified");
		goto err;
	}

	if (ofname == NULL) {
		FUNC0("no output file specified");
		goto err;
	}

	err = FUNC13(ifname, &st);
	if (err){
		FUNC1("stat failed on %s", ifname);
		goto err;
	}

	buflen = st.st_size;
	buf = FUNC12(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto err;
	}

	infile = FUNC7(ifname, "r");
	if (infile == NULL) {
		FUNC1("could not open \"%s\" for reading", ifname);
		goto err_free;
	}

	errno = 0;
	FUNC8(buf, buflen, 1, infile);
	if (errno != 0) {
		FUNC1("unable to read from file %s", ifname);
		goto err_close_in;
	}

	crc = FUNC4(buf, buflen);
	hdr = (uint32_t *)buf;
	*hdr = FUNC2(crc);

	outfile = FUNC7(ofname, "w");
	if (outfile == NULL) {
		FUNC1("could not open \"%s\" for writing", ofname);
		goto err_close_in;
	}

	errno = 0;
	FUNC10(buf, buflen, 1, outfile);
	if (errno) {
		FUNC1("unable to write to file %s", ofname);
		goto err_close_out;
	}

	res = EXIT_SUCCESS;

 out_flush:
	FUNC6(outfile);

 err_close_out:
	FUNC5(outfile);
	if (res != EXIT_SUCCESS) {
		FUNC14(ofname);
	}

 err_close_in:
	FUNC5(infile);

 err_free:
	FUNC9(buf);

 err:
	return res;
}