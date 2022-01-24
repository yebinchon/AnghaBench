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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct stat {int st_size; } ;
typedef  int ssize_t ;
typedef  int int32_t ;
struct TYPE_2__ {scalar_t__ ih_hcrc; } ;
typedef  TYPE_1__ image_header_t ;

/* Variables and functions */
 int IH_PAD_BYTES ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,int,...) ; 
 char* optarg ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,int) ; 

int FUNC13(int argc, char *argv[])
{
	struct stat statbuf;
	u_int8_t *filebuf;
	int ifd;
	int ofd;
	ssize_t rsz;
	u_int32_t crc_recalc;
	image_header_t *imgh;
	int opt;
	char *infname = NULL;
	char *outfname = NULL;
	int padsz = IH_PAD_BYTES;
	int ltmp;

	while ((opt = FUNC4(argc, argv, "i:o:l:")) != -1) {
		switch (opt) {
		case 'i':
			infname = optarg;
			break;
		case 'o':
			outfname = optarg;
			break;
		case 'l':
			ltmp = FUNC10(optarg, NULL, 0);
			if (ltmp > 0)
				padsz = ltmp;
			break;
		default:
			break;
		}
	}

	if (!infname || !outfname) {
		FUNC11(argv[0]);
		FUNC1(1);
	}

	ifd = FUNC8(infname, O_RDONLY);
	if (ifd < 0) {
		FUNC2(stderr,
			"could not open input file. (errno = %d)\n", errno);
		FUNC1(1);
	}

	ofd = FUNC8(outfname, O_WRONLY | O_CREAT, 0644);
	if (ofd < 0) {
		FUNC2(stderr,
			"could not open output file. (errno = %d)\n", errno);
		FUNC1(1);
	}

	if (FUNC3(ifd, &statbuf) < 0) {
		FUNC2(stderr,
			"could not fstat input file. (errno = %d)\n", errno);
		FUNC1(1);
	}

	filebuf = FUNC6(statbuf.st_size + padsz);
	if (!filebuf) {
		FUNC2(stderr, "buffer allocation failed\n");
		FUNC1(1);
	}

	rsz = FUNC9(ifd, filebuf, sizeof(*imgh));
	if (rsz != sizeof(*imgh)) {
		FUNC2(stderr,
			"could not read input file (errno = %d).\n", errno);
		FUNC1(1);
	}

	FUNC7(&(filebuf[sizeof(*imgh)]), 0, padsz);

	rsz = FUNC9(ifd, &(filebuf[sizeof(*imgh) + padsz]),
				statbuf.st_size - sizeof(*imgh));
	if (rsz != (int32_t)(statbuf.st_size - sizeof(*imgh))) {
		FUNC2(stderr,
			"could not read input file (errno = %d).\n", errno);
		FUNC1(1);
	}

	imgh = (image_header_t *)filebuf;

	imgh->ih_hcrc = 0;
	crc_recalc = FUNC0(0, filebuf, sizeof(*imgh) + padsz);
	imgh->ih_hcrc = FUNC5(crc_recalc);

	rsz = FUNC12(ofd, filebuf, statbuf.st_size + padsz);
	if (rsz != (int32_t)statbuf.st_size + padsz) {
		FUNC2(stderr,
			"could not write output file (errnor = %d).\n", errno);
		FUNC1(1);
	}

	return 0;
}