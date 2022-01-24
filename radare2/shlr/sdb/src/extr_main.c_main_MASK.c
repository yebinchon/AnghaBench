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
 int MODE_DFLT ; 
 int MODE_JSON ; 
 int MODE_ZERO ; 
 int /*<<< orphan*/  SDB_OPTION_JOURNAL ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const**,int,char) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  s ; 
 int /*<<< orphan*/  save ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,int) ; 
 int FUNC11 (char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC14 (char const*) ; 
 int FUNC15 (int) ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int)) ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,int) ; 

int FUNC23(int argc, const char **argv) {
	char *line;
	const char *arg, *grep = NULL;
	int i, fmt = MODE_DFLT;
	int db0 = 1, argi = 1;
	bool interactive = false;

	/* terminate flags */
	if (argc < 2) {
		return FUNC15 (1);
	}
	arg = argv[1];

	if (arg[0] == '-') {// && arg[1] && arg[2]==0) {
		switch (arg[1]) {
		case 0:
			/* no-op */
			break;
		case '0':
			fmt = MODE_ZERO;
			db0++;
			argi++;
			if (db0 >= argc) {
				return FUNC15 (1);
			}
			break;
		case 'g':
			db0 += 2;
			if (db0 >= argc) {
				return FUNC15 (1);
			}
			grep = argv[2];
			argi += 2;
			break;
		case 'J':
			options |= SDB_OPTION_JOURNAL;
			db0++;
			argi++;
			if (db0 >= argc) {
				return FUNC15 (1);
			}
			break;
		case 'c': return (argc < 3)? FUNC15 (1): FUNC14 (argv[2]);
		case 'v': return FUNC16 ();
		case 'h': return FUNC15 (2);
		case 'e': return FUNC1 ();
		case 'd': return FUNC0 ();
		case 'D':
			if (argc == 4) {
				return FUNC3 (argv[2], argv[3]) ? 0 : 1;
			}
			return FUNC15 (0);
		case 'j':
			if (argc > 2) {
				return FUNC10 (argv[db0 + 1], MODE_JSON);
			}
			return FUNC8 ();
		default:
			FUNC4 ("Invalid flag %s\n", arg);
			break;
		}
	}

	/* sdb - */
	if (argi == 1 && !FUNC19 (argv[argi], "-")) {
		/* no database */
		argv[argi] = "";
		if (argc == db0 + 1) {
			interactive = true;
			/* if no argument passed */
			argv[argi] = "-";
			argc++;
			argi++;
		}
	}
	/* sdb dbname */
	if (argc - 1 == db0) {
		if (grep) {
			return FUNC11 (argv[db0], fmt, grep);
		}
		return FUNC10 (argv[db0], fmt);
	}
#if USE_MMAN
	signal (SIGINT, terminate);
	signal (SIGHUP, synchronize);
#endif
	int ret = 0;
	if (interactive || !FUNC19 (argv[db0 + 1], "-")) {
		if ((s = FUNC12 (NULL, argv[db0], 0))) {
			FUNC9 (s, options);
			int kvs = db0 + 2;
			if (kvs < argc) {
				save |= FUNC7 (s, argv + argi + 2, argc - kvs, '-');
			}
			for (; (line = FUNC18 (NULL));) {
				save |= FUNC13 (s, line);
				if (fmt) {
					FUNC5 (stdout);
					FUNC22 (1, "", 1);
				}
				FUNC6 (line);
			}
		}
	} else if (!FUNC19 (argv[db0 + 1], "=")) {
		ret = FUNC2 (argv[db0], NULL, 0);
	} else {
		s = FUNC12 (NULL, argv[db0], 0);
		if (!s) {
			return 1;
		}
		FUNC9 (s, options);
		for (i = db0 + 1; i < argc; i++) {
			save |= FUNC13 (s, argv[i]);
			if (fmt) {
				FUNC5 (stdout);
				FUNC22 (1, "", 1);
			}
		}
	}
	FUNC21 (ret);
	return ret;
}