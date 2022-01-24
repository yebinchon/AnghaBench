#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_3__ {char* (* cb_core_cmdstr ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  (* cb_printf ) (char*,char*) ;int /*<<< orphan*/  user; } ;
typedef  int /*<<< orphan*/  RSocket ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  TYPE_1__ RIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int RMT_CMD ; 
 int RMT_MAX ; 
 int RMT_REPLY ; 
 unsigned int ST32_MAX ; 
 char* FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 char* FUNC12 (char*) ; 
 int FUNC13 (char const*) ; 
 char* FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 unsigned int FUNC16 (int,char*,unsigned int) ; 

__attribute__((used)) static char *FUNC17(RIO *io, RIODesc *fd, const char *command) {
	int ret, reslen = 0, cmdlen = 0;
	RSocket *s = FUNC0 (fd);
	unsigned int i;
	char *ptr, *res, *str;
	ut8 buf[RMT_MAX];

	buf[0] = RMT_CMD;
	i = FUNC13 (command) + 1;
	if (i > RMT_MAX - 5) {
		FUNC2 ("Command too long\n");
		return NULL;
	}
	FUNC11 (buf + 1, i);
	FUNC4 (buf + 5, command, i);
	(void)FUNC10 (s, buf, i+5);
	FUNC7 (s);

	/* read reverse cmds */
	for (;;) {
		ret = FUNC9 (s, buf, 1);
		if (ret != 1) {
			return NULL;
		}
		/* system back in the middle */
		/* TODO: all pkt handlers should check for reverse queries */
		if (buf[0] != RMT_CMD) {
			break;
		}
		// run io->cmdstr
		// return back the string
		buf[0] |= RMT_REPLY;
		FUNC5 (buf + 1, 0, 4);
		ret = FUNC9 (s, buf + 1, 4);
		if (ret != 4) {
			return NULL;
		}
		cmdlen = FUNC6 (buf, 1);
		if (cmdlen + 1 == 0) { // check overflow
			cmdlen = 0;
		}
		str = FUNC1 (1, cmdlen + 1);
		ret = FUNC9 (s, (ut8*)str, cmdlen);
		FUNC2 ("RUN %d CMD(%s)\n", ret, str);
		if (str && *str) {
			res = io->cb_core_cmdstr (io->user, str);
		} else {
			res = FUNC12 ("");
		}
		FUNC2 ("[%s]=>(%s)\n", str, res);
		reslen = FUNC13 (res);
		FUNC3 (str);
		FUNC11 (buf + 1, reslen);
		FUNC4 (buf + 5, res, reslen);
		FUNC3 (res);
		(void)FUNC10 (s, buf, reslen + 5);
		FUNC7 (s);
	}

	// read
	ret = FUNC9 (s, buf + 1, 4);
	if (ret != 4) {
		return NULL;
	}
	if (buf[0] != (RMT_CMD | RMT_REPLY)) {
		FUNC2 ("Unexpected rap cmd reply\n");
		return NULL;
	}

	i = FUNC6 (buf, 1);
	ret = 0;
	if (i > ST32_MAX) {
		FUNC2 ("Invalid length\n");
		return NULL;
	}
	ptr = (char *)FUNC1 (1, i + 1);
	if (ptr) {
		int ir, tr = 0;
		do {
			ir = FUNC9 (s, (ut8*)ptr + tr, i - tr);
			if (ir < 1) {
				break;
			}
			tr += ir;
		} while (tr < i);
		// TODO: use io->cb_printf() with support for \x00
		ptr[i] = 0;
		if (io->cb_printf) {
			io->cb_printf ("%s", ptr);
		} else {
			if (FUNC16 (1, ptr, i) != i) {
				FUNC2 ("Failed to write\n");
			}
		}
		FUNC3 (ptr);
	}
#if DEAD_CODE
	/* Clean */
	if (ret > 0) {
		ret -= r_socket_read (s, (ut8*)buf, RMT_MAX);
	}
#endif
	return NULL;
}