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
typedef  int /*<<< orphan*/  prompt2 ;
typedef  int /*<<< orphan*/  prompt ;
struct TYPE_4__ {char* member_0; char* member_1; char* member_2; } ;
typedef  TYPE_1__ TextLog ;
typedef  int /*<<< orphan*/  RSocket ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ *,int*) ; 
 char* FUNC9 (char*,...) ; 
 char* FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 int FUNC15 (char const*) ; 
 char* FUNC16 (char const*,char*) ; 

__attribute__((used)) static void FUNC17(RCore *core, int nth) {
	char *proto = "http";
	char *host = "";
	char *port= "";
	char *file= "";
	char prompt[64], prompt2[64], *str, *ptr;
	int len;
	const char* res;
	RSocket *s = NULL;

	TextLog T = { host, port, file };
	FUNC13 (prompt, sizeof (prompt), "[%s://%s:%s/%s]> ",
			proto, host, port, file);
	FUNC13 (prompt2, sizeof (prompt2), "[%s:%s]$ ", host, port);
	for (;;) {
		FUNC6 (prompt);
		res = FUNC5 ();
		if (!res || !*res) {
			break;
		}
		if (*res == 'q') {
			break;
		}
		if (!FUNC14 (res, "!sh")) {
			for (;;) {
				FUNC6 (prompt2);
				res = FUNC5 ();
				if (!res || !*res || !FUNC14 (res, "exit")) {
					break;
				}
				ptr = FUNC10 (res);
				char *uri = FUNC9 ("http://%s:%s/%s!%s", host, port, file, res);
				str = FUNC8 (uri, NULL, &len);
				if (str) {
					str[len] = 0;
					res = FUNC16 (str, "\n\n");
					if (res) {
						res = FUNC16 (res + 1, "\n\n");
					}
					res = res? res + 2: str;
					const char *tail = (res[FUNC15 (res) - 1] == '\n')? "": "\n";
					FUNC1 ("%s%s", res, tail);
					FUNC4 (str);
					FUNC0 (str);
				}
				FUNC0 (ptr);
				FUNC0 (uri);
			}
		} else if (res[0]=='v' || res[0] == 'V') {
			if (res[1]==' ') {
				FUNC12 (core, T, res + 1);
			} else {
				FUNC12 (core, T, NULL);
			}
		} else if (!FUNC14 (res, "TT")) {
			FUNC11 (core, T);
		} else {
			char *cmdline = FUNC9 ("%d %s", nth, res);
			FUNC3 (core, cmdline);
			FUNC2 ();
			FUNC4 (res);
		}
	}
	FUNC7 (s);
}