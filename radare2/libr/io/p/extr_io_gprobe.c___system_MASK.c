#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut8 ;
typedef  int /*<<< orphan*/  ut32 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  gport; } ;
typedef  TYPE_1__ RIOGprobe ;
typedef  TYPE_2__ RIODesc ;
typedef  int /*<<< orphan*/  RIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC11 (RIO *io, RIODesc *fd, const char *cmd) {
	RIOGprobe *gprobe;

	if (!fd || !fd->data) {
		return NULL;
	}
	gprobe = (RIOGprobe *)fd->data;

	if (!cmd[0] || cmd[0] == '?' || !FUNC8 (cmd, "help")) {
		FUNC6 ("Usage: =!cmd args\n"
			" =!reset code\n"
			" =!debugon\n"
			" =!debugoff\n"
			" =!runcode address\n"
			" =!getdeviceid\n"
			" =!getinformation\n");
		return NULL;
	}

	if (FUNC7 (cmd, "reset") && (FUNC9 (cmd) > 6)) {
		ut32 code = (ut32)FUNC10 (cmd + 6, NULL, 10);

		FUNC4 (&gprobe->gport, code);

		return NULL;
	}

	if (FUNC7 (cmd, "debugon")) {
		FUNC1 (&gprobe->gport);

		return NULL;
	}

	if (FUNC7 (cmd, "debugoff")) {
		FUNC0 (&gprobe->gport);

		return NULL;
	}

	if (FUNC7 (cmd, "runcode") && (FUNC9 (cmd) > 8)) {
		ut32 address = (ut32)FUNC10 (cmd + 8, NULL, 0);

		FUNC5 (&gprobe->gport, address);

		return NULL;
	}

	if (FUNC7 (cmd, "getdeviceid")) {
		ut8 index = 0;

		while (!FUNC2 (&gprobe->gport, index++)) {
		};

		return NULL;
	}

	if (FUNC7 (cmd, "getinformation")) {
		FUNC3 (&gprobe->gport);

		return NULL;
	}

	FUNC6 ("Try: '=!?'\n");

	return NULL;
}