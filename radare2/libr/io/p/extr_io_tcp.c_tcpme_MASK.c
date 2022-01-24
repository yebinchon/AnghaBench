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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  RSocket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  R_SOCKET_PROTO_TCP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (char const*) ; 

__attribute__((used)) static ut8 *FUNC12 (const char *pathname, int *code, int *len) {
	pathname += 6;
	*code = 404;
#if __UNIX__
	r_sys_signal (SIGINT, SIG_IGN);
#endif
	if (*pathname == ':') {
		/* listen and wait for connection */
		RSocket *sl = FUNC7 (false);
		if (!FUNC6 (sl, pathname + 1, NULL)) {
			FUNC1 ("Cannot listen\n");
			FUNC5 (sl);
			return NULL;
		}
		RSocket *sc = FUNC3 (sl);
		ut8 *res = FUNC8 (sc, len);
		FUNC5 (sc);
		FUNC5 (sl);
		if (res) {
			*code = 200;
			return res;
		}
	} else {
		/* connect and slurp the end point */
		char *host = FUNC11 (pathname);
		if (!host) {
			return NULL;
		}
		char *port = FUNC10 (host, ':');
		if (port) {
			*port++ = 0;
			RSocket *s = FUNC7 (false);
			if (FUNC4 (s, host, port, R_SOCKET_PROTO_TCP, 0)) {
				ut8 *res = FUNC8 (s, len);
				if (*len < 1) {
					FUNC0 (res);
				} else {
					*code = 200;
				}
				FUNC5 (s);
				FUNC2 (host);
				return res;
			}
			FUNC5 (s);
		} else {
			FUNC1 ("Missing port.\n");
		}
		FUNC2 (host);
	}
	return NULL;
}