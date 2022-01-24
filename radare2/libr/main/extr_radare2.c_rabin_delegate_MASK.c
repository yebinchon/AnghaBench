#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* file; int /*<<< orphan*/  io; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  user; } ;
struct TYPE_8__ {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  RThreadFunctionRet ;
typedef  TYPE_2__ RThread ;
typedef  TYPE_3__ RIODesc ;

/* Variables and functions */
 int /*<<< orphan*/  R_TH_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_6__ r ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rabin_cmd ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static RThreadFunctionRet FUNC9(RThread *th) {
	RIODesc *d = FUNC4 (r.io, r.file->fd);
	if (rabin_cmd && FUNC3 (d->name)) {
		char *nptr, *ptr, *cmd = FUNC5 (rabin_cmd, NULL, NULL);
		ptr = cmd;
		if (ptr) {
			do {
				if (th) {
					FUNC6 (th->user);
				}
				nptr = FUNC8 (ptr, '\n');
				if (nptr) {
					*nptr = 0;
				}
				FUNC2 (&r, ptr, 0);
				if (nptr) {
					ptr = nptr + 1;
				}
				if (th) {
					FUNC7 (th->user);
				}
			} while (nptr);
		}
		//r_core_cmd (&r, cmd, 0);
		FUNC1 (rabin_cmd);
		rabin_cmd = NULL;
	}
	if (th) {
		FUNC0 ("rabin2: done\n");
	}
	return R_TH_STOP;
}