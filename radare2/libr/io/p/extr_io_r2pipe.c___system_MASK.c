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
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC13 (char*,char*) ; 

__attribute__((used)) static char *FUNC14(RIO *io, RIODesc *fd, const char *msg) {
	FUNC12 (io && fd && msg, NULL);
	PJ *pj = FUNC7 ();
	FUNC8 (pj);
	FUNC6 (pj, "op", "system");
	FUNC6 (pj, "cmd", msg);
	FUNC4 (pj);
	const char *fmt = FUNC9 (pj);
	int rv = FUNC11 (FUNC0 (fd), fmt);
	FUNC5 (pj);
	if (rv < 1) {
		FUNC2 ("r2pipe_write: error\n");
		return NULL;
	}
	char *res = FUNC10 (FUNC0 (fd));
	//eprintf ("%s\n", res);
	/* TODO: parse json back */
	char *r = FUNC13 (res, "result");
	if (r) {
		int rescount = FUNC1 (r + 6 + 1);
		FUNC2 ("RESULT %d\n", rescount);
	}
	FUNC3 (res);
	return NULL;
}