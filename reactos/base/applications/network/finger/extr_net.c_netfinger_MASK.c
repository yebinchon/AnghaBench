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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct servent {int /*<<< orphan*/  s_port; } ;
struct in_addr {unsigned long s_addr; } ;
struct hostent {char* h_name; char** h_addr_list; char* h_addr; int h_length; int /*<<< orphan*/  h_addrtype; scalar_t__ h_aliases; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct hostent* FUNC5 (char*) ; 
 struct servent* FUNC6 (char*,char*) ; 
 unsigned long FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC18 (char*) ; 

void
FUNC19(char *name)
{
	extern int lflag;
	char c, lastc;
	struct in_addr defaddr;
	struct hostent *hp, def;
	struct servent *sp;
	struct sockaddr_in sin;
	SOCKET s;
	char *alist[1], *host;

	/* If this is a local request */
	if (!(host = FUNC15(name, '@')))
		return;

	*host++ = '\0';
	if (FUNC8(*host) && (defaddr.s_addr = FUNC7(host)) != (unsigned long)-1) {
		def.h_name = host;
		def.h_addr_list = alist;
		def.h_addr = (char *)&defaddr;
		def.h_length = sizeof(struct in_addr);
		def.h_addrtype = AF_INET;
		def.h_aliases = 0;
		hp = &def;
	} else if (!(hp = FUNC5(host))) {
		(void)FUNC4(stderr,
		    "finger: unknown host: %s\n", host);
		return;
	}
	if (!(sp = FUNC6("finger", "tcp"))) {
		(void)FUNC4(stderr, "finger: tcp/finger: unknown service\n");
		return;
	}
	sin.sin_family = hp->h_addrtype;
	FUNC1(hp->h_addr, (char *)&sin.sin_addr, hp->h_length);
	sin.sin_port = sp->s_port;
	if ((s = FUNC17(hp->h_addrtype, SOCK_STREAM, 0)) == INVALID_SOCKET) {
		FUNC11("finger: socket");
		return;
	}

	/* have network connection; identify the host connected with */
	(void)FUNC12("[%s]\n", hp->h_name);
	if (FUNC3(s, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
		FUNC4(stderr, "finger: connect rc = %d", FUNC0());
		(void)FUNC2(s);
		return;
	}

	/* -l flag for remote fingerd  */
	if (lflag)
		FUNC16(s, "/W ", 3, 0);
	/* send the name followed by <CR><LF> */
	FUNC16(s, name, FUNC18(name), 0);
	FUNC16(s, "\r\n", 2, 0);

	/*
	 * Read from the remote system; once we're connected, we assume some
	 * data.  If none arrives, we hang until the user interrupts.
	 *
	 * If we see a <CR> or a <CR> with the high bit set, treat it as
	 * a newline; if followed by a newline character, only output one
	 * newline.
	 *
	 * Otherwise, all high bits are stripped; if it isn't printable and
	 * it isn't a space, we can simply set the 7th bit.  Every ASCII
	 * character with bit 7 set is printable.
	 */
	lastc = 0;
	while (FUNC14(s, &c, 1, 0) == 1) {
		c &= 0x7f;
		if (c == 0x0d) {
			if (lastc == '\r')	/* ^M^M - skip dupes */
				continue;
			c = '\n';
			lastc = '\r';
		} else {
			if (!FUNC9(c) && !FUNC10(c))
				c |= 0x40;
			if (lastc != '\r' || c != '\n')
				lastc = c;
			else {
				lastc = '\n';
				continue;
			}
		}
		FUNC13(c);
	}
	if (lastc != '\n')
		FUNC13('\n');
	FUNC13('\n');
	(void)FUNC2(s);
}