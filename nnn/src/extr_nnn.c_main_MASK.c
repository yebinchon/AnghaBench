#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct sigaction {int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  mmask_t ;
struct TYPE_4__ {int blkorder; int showdetail; int filtermode; int cliopener; int filtercmd; int showhidden; int nonavopen; int picker; int pickraw; int useeditor; int trash; int /*<<< orphan*/  autoselect; int /*<<< orphan*/  filter_re; int /*<<< orphan*/  mtime; } ;
struct TYPE_3__ {char color; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_MAX ; 
 int CTX_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 size_t EDITOR ; 
 int FALSE ; 
 int /*<<< orphan*/  F_NOWAIT ; 
 int /*<<< orphan*/  IN_NONBLOCK ; 
 int /*<<< orphan*/  LC_ALL ; 
 size_t NNNLVL ; 
 size_t NNN_BMS ; 
 size_t NNN_CONTEXT_COLORS ; 
 size_t NNN_COPIER ; 
 size_t NNN_IDLE_TIMEOUT ; 
 size_t NNN_OPENER ; 
 size_t NNN_TRASH ; 
 size_t NNN_USE_EDITOR ; 
 size_t OPENER ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 size_t PAGER ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  PLUGIN_MAX ; 
 size_t SHELL ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 size_t STR_INVBM_KEY ; 
 int /*<<< orphan*/  S_BLKSIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 char* VERSION ; 
 size_t VISUAL ; 
 int _FAILURE ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blk_shift ; 
 int /*<<< orphan*/  bmstr ; 
 int /*<<< orphan*/  bookmark ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 TYPE_2__ cfg ; 
 int /*<<< orphan*/  cfgdir ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * cmpfn ; 
 char* copier ; 
 char* cp ; 
 char* editor ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char** env_cfg ; 
 char** envs ; 
 scalar_t__ event_fd ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * filterfn ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_buf ; 
 TYPE_1__* g_ctx ; 
 void* g_selpath ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,int) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*) ; 
 int FUNC16 (int,char**,char*) ; 
 char* home ; 
 scalar_t__ idletimeout ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 char* initpath ; 
 scalar_t__ inotify_fd ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__) ; 
 scalar_t__ inotify_wd ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ kq ; 
 scalar_t__ FUNC21 () ; 
 char** messages ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* mv ; 
 int /*<<< orphan*/  nftw_fn ; 
 int FUNC24 (char*,int,int) ; 
 char* opener ; 
 char* optarg ; 
 int optind ; 
 char* pager ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  plug ; 
 int /*<<< orphan*/  pluginstr ; 
 int /*<<< orphan*/  printent_long ; 
 int /*<<< orphan*/ * printptr ; 
 int /*<<< orphan*/  pselbuf ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 void* FUNC27 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ rl_change_environment ; 
 int /*<<< orphan*/  rl_complete ; 
 int /*<<< orphan*/  rl_menu_complete ; 
 int /*<<< orphan*/  FUNC29 (char*,char*) ; 
 scalar_t__ selbufpos ; 
 int FUNC30 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 char* shell ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC38 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC39 (char*) ; 
 int /*<<< orphan*/  FUNC40 (char*,char*,int) ; 
 int /*<<< orphan*/  sum_bsizes ; 
 int /*<<< orphan*/  FUNC41 (void*) ; 
 int /*<<< orphan*/  FUNC42 () ; 
 char** utils ; 
 int /*<<< orphan*/  visible_str ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC44 (char*) ; 
 int /*<<< orphan*/  FUNC45 (char*) ; 
 int /*<<< orphan*/  FUNC46 () ; 
 char* FUNC47 (char*,char*) ; 
 scalar_t__ FUNC48 (char*) ; 
 int /*<<< orphan*/  FUNC49 (scalar_t__) ; 
 int /*<<< orphan*/  xstrverscasecmp ; 

int FUNC50(int argc, char *argv[])
{
	mmask_t mask;
	char *arg = NULL;
	char *session = NULL;
	int opt;
#ifdef __linux__
	bool progress = FALSE;
#endif

	while ((opt = FUNC16(argc, argv, "HSKiab:cde:fnop:rstvh")) != -1) {
		switch (opt) {
		case 'S':
			cfg.blkorder = 1;
			nftw_fn = sum_bsizes;
			blk_shift = FUNC10(S_BLKSIZE) - 1; // fallthrough
		case 'd':
			cfg.showdetail = 1;
			printptr = &printent_long;
			break;
		case 'i':
			cfg.filtermode = 1;
			break;
		case 'a':
			cfg.mtime = 0;
			break;
		case 'b':
			arg = optarg;
			break;
		case 'c':
			cfg.cliopener = 1;
			break;
		case 'e':
			session = optarg;
			break;
		case 'f':
			cfg.filtercmd = 1;
			break;
		case 'H':
			cfg.showhidden = 1;
			break;
		case 'n':
			cmpfn = &xstrverscasecmp;
			break;
		case 'o':
			cfg.nonavopen = 1;
			break;
		case 'p':
			cfg.picker = 1;
			if (optarg[0] == '-' && optarg[1] == '\0')
				cfg.pickraw = 1;
			else {
				int fd = FUNC24(optarg, O_WRONLY | O_CREAT, 0600);

				if (fd == -1) {
					FUNC46();
					return _FAILURE;
				}

				FUNC6(fd);
				g_selpath = FUNC27(optarg, NULL);
				FUNC41(g_selpath);
			}
			break;
		case 'r':
#ifdef __linux__
			progress = TRUE;
#endif
			break;
		case 's':
			cfg.filter_re = 0;
			filterfn = &visible_str;
			break;
		case 't':
			cfg.autoselect = 0;
			break;
		case 'K':
			FUNC5();
			return _SUCCESS;
		case 'v':
			FUNC11(stdout, "%s\n", VERSION);
			return _SUCCESS;
		case 'h':
			FUNC42();
			return _SUCCESS;
		default:
			FUNC42();
			return _FAILURE;
		}
	}

	/* Confirm we are in a terminal */
	if (!cfg.picker && !(FUNC20(STDIN_FILENO) && FUNC20(STDOUT_FILENO)))
		FUNC8(1);

	/* Get the context colors; copier used as tmp var */
	copier = FUNC47(env_cfg[NNN_CONTEXT_COLORS], "4444");
	opt = 0;
	while (opt < CTX_MAX) {
		if (*copier) {
			if (*copier < '0' || *copier > '7') {
				FUNC11(stderr, "0 <= code <= 7\n");
				return _FAILURE;
			}

			g_ctx[opt].color = *copier - '0';
			++copier;
		} else
			g_ctx[opt].color = 4;

		++opt;
	}

#ifdef DBGMODE
	enabledbg();
	DPRINTF_S(VERSION);
#endif

	FUNC3(cleanup);

	home = FUNC15("HOME");
	if (!home) {
		FUNC11(stderr, "set HOME\n");
		return _FAILURE;
	}
	FUNC0(home);

	if (!FUNC34())
		return _FAILURE;

	/* Get custom opener, if set */
	opener = FUNC47(env_cfg[NNN_OPENER], utils[OPENER]);
	FUNC0(opener);

	/* Parse bookmarks string */
	if (!FUNC25(bookmark, &bmstr, env_cfg[NNN_BMS], BM_MAX)) {
		FUNC11(stderr, "%s\n", env_cfg[NNN_BMS]);
		return _FAILURE;
	}

	/* Parse plugins string */
	if (!FUNC25(plug, &pluginstr, "NNN_PLUG", PLUGIN_MAX)) {
		FUNC11(stderr, "%s\n", "NNN_PLUG");
		return _FAILURE;
	}

	if (arg) { /* Open a bookmark directly */
		if (!arg[1]) /* Bookmarks keys are single char */
			initpath = FUNC13(bookmark, NULL, *arg, BM_MAX, TRUE);

		if (!initpath) {
			FUNC11(stderr, "%s\n", messages[STR_INVBM_KEY]);
			return _FAILURE;
		}
	} else if (argc == optind) {
		/* Start in the current directory */
		initpath = FUNC14(NULL, PATH_MAX);
		if (!initpath)
			initpath = "/";
	} else {
		arg = argv[optind];
		if (FUNC39(arg) > 7 && !FUNC40(arg, "file://", 7))
			arg = arg + 7;
		initpath = FUNC27(arg, NULL);
		FUNC0(initpath);
		if (!initpath) {
			FUNC46();
			return _FAILURE;
		}

		/*
		 * If nnn is set as the file manager, applications may try to open
		 * files by invoking nnn. In that case pass the file path to the
		 * desktop opener and exit.
		 */
		struct stat sb;

		if (FUNC38(initpath, &sb) == -1) {
			FUNC46();
			return _FAILURE;
		}

		if (FUNC2(sb.st_mode)) {
			FUNC37(opener, arg, NULL, NULL, F_NOWAIT);
			return _SUCCESS;
		}
	}

	/* Edit text in EDITOR if opted (and opener is not all-CLI) */
	if (!cfg.cliopener && FUNC48(env_cfg[NNN_USE_EDITOR]))
		cfg.useeditor = 1;

	/* Get VISUAL/EDITOR */
	editor = FUNC47(envs[VISUAL], FUNC47(envs[EDITOR], "vi"));
	FUNC0(FUNC15(envs[VISUAL]));
	FUNC0(FUNC15(envs[EDITOR]));
	FUNC0(editor);

	/* Get PAGER */
	pager = FUNC47(envs[PAGER], "less");
	FUNC0(pager);

	/* Get SHELL */
	shell = FUNC47(envs[SHELL], "sh");
	FUNC0(shell);

	FUNC0(FUNC15("PWD"));

#ifdef LINUX_INOTIFY
	/* Initialize inotify */
	inotify_fd = inotify_init1(IN_NONBLOCK);
	if (inotify_fd < 0) {
		xerror();
		return _FAILURE;
	}
#elif defined(BSD_KQUEUE)
	kq = kqueue();
	if (kq < 0) {
		xerror();
		return _FAILURE;
	}
#endif

	/* Set nnn nesting level, idletimeout used as tmp var */
	idletimeout = FUNC44(FUNC15(env_cfg[NNNLVL]));
	FUNC32(env_cfg[NNNLVL], FUNC49(++idletimeout), 1);

	/* Get locker wait time, if set */
	idletimeout = FUNC44(FUNC15(env_cfg[NNN_IDLE_TIMEOUT]));
	FUNC1(idletimeout);

	if (FUNC48(env_cfg[NNN_TRASH]))
		cfg.trash = 1;

	/* Prefix for temporary files */
	if (!FUNC31())
		return _FAILURE;

	/* Get the clipboard copier, if set */
	copier = FUNC15(env_cfg[NNN_COPIER]);

#ifdef __linux__
	if (!progress) {
		cp[5] = cp[4];
		cp[2] = cp[4] = ' ';

		mv[5] = mv[4];
		mv[2] = mv[4] = ' ';
	}
#endif

	/* Ignore/handle certain signals */
	struct sigaction act = {.sa_handler = sigint_handler};

	if (FUNC35(SIGINT, &act, NULL) < 0) {
		FUNC46();
		return _FAILURE;
	}
	FUNC36(SIGQUIT, SIG_IGN);

	/* Test initial path */
	if (!FUNC45(initpath)) {
		FUNC46();
		return _FAILURE;
	}

#ifndef NOLOCALE
	/* Set locale */
	FUNC33(LC_ALL, "");
#endif

#ifndef NORL
#if RL_READLINE_VERSION >= 0x0603
	/* readline would overwrite the WINCH signal hook */
	rl_change_environment = 0;
#endif
	/* Bind TAB to cycling */
	FUNC29("completion-ignore-case", "on");
#ifdef __linux__
	FUNC28('\t', rl_menu_complete);
#else
	rl_bind_key('\t', rl_complete);
#endif
	FUNC22(cfgdir, ".history", g_buf);
	FUNC26(g_buf);
#endif

	if (!FUNC17(&mask))
		return _FAILURE;

	FUNC4(initpath, session);
	FUNC23(mask, NULL);
	FUNC9();

#ifndef NORL
	FUNC22(cfgdir, ".history", g_buf);
	FUNC43(g_buf);
#endif

	if (cfg.pickraw) {
		if (selbufpos) {
			opt = FUNC30(1, NULL);
			if (opt != (int)(selbufpos))
				FUNC46();
		}
	} else if (!cfg.picker && g_selpath)
		FUNC41(g_selpath);

	/* Free the selection buffer */
	FUNC12(pselbuf);

#ifdef LINUX_INOTIFY
	/* Shutdown inotify */
	if (inotify_wd >= 0)
		inotify_rm_watch(inotify_fd, inotify_wd);
	close(inotify_fd);
#elif defined(BSD_KQUEUE)
	if (event_fd >= 0)
		close(event_fd);
	close(kq);
#endif

	return _SUCCESS;
}