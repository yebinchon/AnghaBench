#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct servent {int /*<<< orphan*/  s_port; } ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_4__ {char* pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORM_N ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MODE_S ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  SO_DEBUG ; 
 int /*<<< orphan*/  STRU_F ; 
 int /*<<< orphan*/  TYPE_A ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _fmode ; 
 int autologin ; 
 char* bytename ; 
 int bytesize ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ cpend ; 
 int crflag ; 
 int /*<<< orphan*/  debug ; 
 int doglob ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  form ; 
 char* formname ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int fromatty ; 
 char* FUNC5 () ; 
 TYPE_1__* FUNC6 (char const*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 struct servent* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* home ; 
 int interactive ; 
 int /*<<< orphan*/  mode ; 
 char* modename ; 
 int /*<<< orphan*/  options ; 
 int passivemode ; 
 int /*<<< orphan*/  portnum ; 
 scalar_t__ proxy ; 
 TYPE_1__* pw ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char const**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  stru ; 
 char* structname ; 
 int /*<<< orphan*/  toplevel ; 
 int /*<<< orphan*/  trace ; 
 int /*<<< orphan*/  type ; 
 char* typename ; 
 int /*<<< orphan*/  verbose ; 

int FUNC13(int argc, const char *argv[])
{
	const char *cp;
	int top;
#if 0
	char homedir[MAXPATHLEN];
#endif

        int err;
        WORD wVerReq;

        WSADATA WSAData;
        struct	servent *sp;		/* service spec for tcp/ftp */

	/* Disable output buffering, for the benefit of Emacs.  */
	//setbuf(stdout, NULL);

        _fmode = O_BINARY; // This causes an error somewhere.

        wVerReq = FUNC0(1,1);

        err = FUNC1(wVerReq, &WSAData);
        if (err != 0)
        {
           FUNC4(stderr, "Could not initialize Windows socket interface.");
           FUNC3(1);
        }

	sp = FUNC8("ftp", "tcp");
	if (sp == 0) {
		FUNC4(stderr, "ftp: ftp/tcp: unknown service\n");
		FUNC3(1);
	}

        portnum = sp->s_port;


	doglob = 1;
	interactive = 1;
	autologin = 1;
	argc--, argv++;
	while (argc > 0 && **argv == '-') {
		for (cp = *argv + 1; *cp; cp++)
			switch (*cp) {

			case 'd':
				options |= SO_DEBUG;
				debug++;
				break;

			case 'v':
				verbose++;
				break;

			case 't':
				trace++;
				break;

			case 'i':
				interactive = 0;
				break;

			case 'n':
				autologin = 0;
				break;

			case 'g':
				doglob = 0;
				break;

			default:
				FUNC4(stdout,
				  "ftp: %c: unknown option\n", *cp);
				FUNC3(1);
			}
		argc--, argv++;
	}
//	fromatty = isatty(fileno(stdin));
        fromatty = 1; // Strengthen this test
	/*
	 * Set up defaults for FTP.
	 */
	(void) FUNC12(typename, "ascii"), type = TYPE_A;
	(void) FUNC12(formname, "non-print"), form = FORM_N;
	(void) FUNC12(modename, "stream"), mode = MODE_S;
	(void) FUNC12(structname, "file"), stru = STRU_F;
	(void) FUNC12(bytename, "8"), bytesize = 8;
	if (fromatty)
		verbose++;
	cpend = 0;           /* no pending replies */
	proxy = 0;	/* proxy not active */
    passivemode = 1; /* passive mode *is* active */
	crflag = 1;    /* strip c.r. on ascii gets */
	/*
	 * Set up the home directory in case we're globbing.
	 */
#if 0
	cp = getlogin();
	if (cp != NULL) {
		pw = getpwnam(cp);
	}
	if (pw == NULL)
		pw = getpwuid(getuid());
	if (pw != NULL) {
		home = homedir;
		(void) strcpy(home, pw->pw_dir);
	}
#endif
        FUNC12(home, "C:/");
	if (argc > 0) {
		if (FUNC10(toplevel))
			FUNC3(0);
//		(void) signal(SIGINT, intr);
//		(void) signal(SIGPIPE, lostpeer);
		FUNC11(argc + 1, argv - 1);
	}
	top = FUNC10(toplevel) == 0;
	if (top) {
//		(void) signal(SIGINT, intr);
//		(void) signal(SIGPIPE, lostpeer);
	}
	for (;;) {
		FUNC2(top);
		top = 1;
	}
}