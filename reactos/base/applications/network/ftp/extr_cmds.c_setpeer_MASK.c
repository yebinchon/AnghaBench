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
 scalar_t__ COMPLETE ; 
 scalar_t__ allbinary ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ autologin ; 
 int code ; 
 scalar_t__ FUNC1 (char*) ; 
 int connected ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,scalar_t__) ; 
 char* hostname ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/ * line ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int margc ; 
 char** margv ; 
 scalar_t__ portnum ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 char* reply_string ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 char* typename ; 
 int verbose ; 

void FUNC14(int argc, const char *argv[])
{
	char *host;

	if (connected) {
		FUNC9("Already connected to %s, use close first.\n",
			hostname);
		(void) FUNC2(stdout);
		code = -1;
		return;
	}
	if (argc < 2) {
		(void) FUNC11(line, " ");
		FUNC9("(to) ");
		(void) FUNC2(stdout);
		(void) FUNC3(&line[FUNC12(line)]);
		FUNC8();
		argc = margc;
		argv = margv;
	}
	if (argc > 3) {
		FUNC9("usage: %s host-name [port]\n", argv[0]);
		(void) FUNC2(stdout);
		code = -1;
		return;
	}
	if (argc > 2) {
		portnum = FUNC0(argv[2]);
		if (portnum <= 0) {
			FUNC9("%s: bad port number-- %s\n", argv[1], argv[2]);
			FUNC9 ("usage: %s host-name [port]\n", argv[0]);
			(void) FUNC2(stdout);
			code = -1;
			return;
		}
		portnum = FUNC5(portnum);
	}
	host = FUNC4(argv[1], portnum);
	if (host) {
		int overbose;
		connected = 1;
		if (autologin)
			(void) FUNC7(argv[1]);

		overbose = verbose;
		if (debug == 0)
			verbose = -1;
		allbinary = 0;
		if (FUNC1("SYST") == COMPLETE && overbose) {
			register char *cp, c;
			cp = FUNC6(reply_string+4, ' ');
			if (cp == NULL)
				cp = FUNC6(reply_string+4, '\r');
			if (cp) {
				if (cp[-1] == '.')
					cp--;
				c = *cp;
				*cp = '\0';
			}

			FUNC9("Remote system type is %s.\n",
				reply_string+4);
			if (cp)
				*cp = c;
		}
		if (!FUNC13(reply_string, "215 UNIX Type: L8", 17)) {
			FUNC10(0, NULL);
			/* allbinary = 1; this violates the RFC */
			if (overbose)
			    FUNC9("Using %s mode to transfer files.\n",
				typename);
		} else if (overbose &&
		    !FUNC13(reply_string, "215 TOPS20", 10)) {
			FUNC9(
"Remember to set tenex mode when transfering binary files from this machine.\n");
		}
		verbose = overbose;
	}
	(void) FUNC2(stdout);
}