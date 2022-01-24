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
 int MAX_ARGS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ buflen ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 char* imagefile ; 
 void* jffs2_skip_bytes ; 
 void* jffs2dir ; 
 void* jffs2file ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,void*) ; 
 int no_erase ; 
 int FUNC17 (char*,int /*<<< orphan*/ ) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ quiet ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 void* FUNC19 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 void* tpl_uboot_args_part ; 
 int /*<<< orphan*/  FUNC21 () ; 

int FUNC22 (int argc, char **argv)
{
	int ch, i, boot, imagefd = 0, force, unlocked;
	char *erase[MAX_ARGS], *device = NULL;
	char *fis_layout = NULL;
	size_t offset = 0, data_size = 0, part_offset = 0, dump_len = 0;
	enum {
		CMD_ERASE,
		CMD_WRITE,
		CMD_UNLOCK,
		CMD_JFFS2WRITE,
		CMD_FIXTRX,
		CMD_FIXSEAMA,
		CMD_FIXWRG,
		CMD_FIXWRGG,
		CMD_VERIFY,
		CMD_DUMP,
		CMD_RESETBC,
	} cmd = -1;

	erase[0] = NULL;
	boot = 0;
	force = 0;
	buflen = 0;
	quiet = 0;
	no_erase = 0;

	while ((ch = FUNC3(argc, argv,
#ifdef FIS_SUPPORT
			"F:"
#endif
			"frnqe:d:s:j:p:o:c:t:l:")) != -1)
		switch (ch) {
			case 'f':
				force = 1;
				break;
			case 'r':
				boot = 1;
				break;
			case 'n':
				no_erase = 1;
				break;
			case 'j':
				jffs2file = optarg;
				break;
			case 's':
				errno = 0;
				jffs2_skip_bytes = FUNC19(optarg, 0, 0);
				if (errno) {
						FUNC2(stderr, "-s: illegal numeric string\n");
						FUNC21();
				}
				break;
			case 'q':
				quiet++;
				break;
			case 'e':
				i = 0;
				while ((erase[i] != NULL) && ((i + 1) < MAX_ARGS))
					i++;

				erase[i++] = optarg;
				erase[i] = NULL;
				break;
			case 'd':
				jffs2dir = optarg;
				break;
			case 'p':
				errno = 0;
				part_offset = FUNC19(optarg, 0, 0);
				if (errno) {
					FUNC2(stderr, "-p: illegal numeric string\n");
					FUNC21();
				}
				break;
			case 'l':
				errno = 0;
				dump_len = FUNC19(optarg, 0, 0);
				if (errno) {
					FUNC2(stderr, "-l: illegal numeric string\n");
					FUNC21();
				}
				break;
			case 'o':
				errno = 0;
				offset = FUNC19(optarg, 0, 0);
				if (errno) {
					FUNC2(stderr, "-o: illegal numeric string\n");
					FUNC21();
				}
				break;
			case 'c':
				errno = 0;
				data_size = FUNC19(optarg, 0, 0);
				if (errno) {
					FUNC2(stderr, "-c: illegal numeric string\n");
					FUNC21();
				}
				break;
			case 't':
				tpl_uboot_args_part = optarg;
				break;
#ifdef FIS_SUPPORT
			case 'F':
				fis_layout = optarg;
				break;
#endif
			case '?':
			default:
				FUNC21();
		}
	argc -= optind;
	argv += optind;

	if (argc < 2)
		FUNC21();

	if ((FUNC18(argv[0], "unlock") == 0) && (argc == 2)) {
		cmd = CMD_UNLOCK;
		device = argv[1];
	} else if ((FUNC18(argv[0], "erase") == 0) && (argc == 2)) {
		cmd = CMD_ERASE;
		device = argv[1];
	} else if (((FUNC18(argv[0], "resetbc") == 0) && (argc == 2)) && &mtd_resetbc) {
		cmd = CMD_RESETBC;
		device = argv[1];
	} else if (((FUNC18(argv[0], "fixtrx") == 0) && (argc == 2)) && &mtd_fixtrx) {
		cmd = CMD_FIXTRX;
		device = argv[1];
	} else if (((FUNC18(argv[0], "fixseama") == 0) && (argc == 2)) && &mtd_fixseama) {
		cmd = CMD_FIXSEAMA;
		device = argv[1];
	} else if (((FUNC18(argv[0], "fixwrg") == 0) && (argc == 2)) && &mtd_fixwrg) {
		cmd = CMD_FIXWRG;
		device = argv[1];
	} else if (((FUNC18(argv[0], "fixwrgg") == 0) && (argc == 2)) && &mtd_fixwrgg) {
		cmd = CMD_FIXWRGG;
		device = argv[1];
	} else if ((FUNC18(argv[0], "verify") == 0) && (argc == 3)) {
		cmd = CMD_VERIFY;
		imagefile = argv[1];
		device = argv[2];
	} else if ((FUNC18(argv[0], "dump") == 0) && (argc == 2)) {
		cmd = CMD_DUMP;
		device = argv[1];
	} else if ((FUNC18(argv[0], "write") == 0) && (argc == 3)) {
		cmd = CMD_WRITE;
		device = argv[2];

		if (FUNC18(argv[1], "-") == 0) {
			imagefile = "<stdin>";
			imagefd = 0;
		} else {
			imagefile = argv[1];
			if ((imagefd = FUNC17(argv[1], O_RDONLY)) < 0) {
				FUNC2(stderr, "Couldn't open image file: %s!\n", imagefile);
				FUNC1(1);
			}
		}

		if (!FUNC5(device)) {
			FUNC2(stderr, "Can't open device for writing!\n");
			FUNC1(1);
		}
		/* check trx file before erasing or writing anything */
		if (!FUNC4(imagefd, device) && !force) {
			FUNC2(stderr, "Image check failed.\n");
			FUNC1(1);
		}
	} else if ((FUNC18(argv[0], "jffs2write") == 0) && (argc == 3)) {
		cmd = CMD_JFFS2WRITE;
		device = argv[2];

		imagefile = argv[1];
		if (!FUNC5(device)) {
			FUNC2(stderr, "Can't open device for writing!\n");
			FUNC1(1);
		}
	} else {
		FUNC21();
	}

	FUNC20();

	i = 0;
	unlocked = 0;
	while (erase[i] != NULL) {
		FUNC13(erase[i]);
		FUNC7(erase[i]);
		if (FUNC18(erase[i], device) == 0)
			unlocked = 1;
		i++;
	}

	switch (cmd) {
		case CMD_UNLOCK:
			if (!unlocked)
				FUNC13(device);
			break;
		case CMD_VERIFY:
			FUNC14(device, imagefile);
			break;
		case CMD_DUMP:
			FUNC6(device, offset, dump_len);
			break;
		case CMD_ERASE:
			if (!unlocked)
				FUNC13(device);
			FUNC7(device);
			break;
		case CMD_WRITE:
			if (!unlocked)
				FUNC13(device);
			FUNC15(imagefd, device, fis_layout, part_offset);
			break;
		case CMD_JFFS2WRITE:
			if (!unlocked)
				FUNC13(device);
			FUNC16(device, imagefile, jffs2dir);
			break;
		case CMD_FIXTRX:
			if (&mtd_fixtrx) {
				FUNC9(device, offset, data_size);
			}
			break;
		case CMD_RESETBC:
			if (&mtd_resetbc) {
				FUNC12(device);
			}
			break;
		case CMD_FIXSEAMA:
			if (&mtd_fixseama)
				FUNC8(device, 0, data_size);
			break;
		case CMD_FIXWRG:
			if (&mtd_fixwrg)
				FUNC10(device, 0, data_size);
			break;
		case CMD_FIXWRGG:
			if (&mtd_fixwrgg)
				FUNC11(device, 0, data_size);
			break;
	}

	FUNC20();

	if (boot)
		FUNC0();

	return 0;
}