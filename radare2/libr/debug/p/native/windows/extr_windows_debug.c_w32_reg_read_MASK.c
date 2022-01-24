#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_8__ {scalar_t__ tid; int /*<<< orphan*/  bits; TYPE_2__* user; } ;
struct TYPE_6__ {scalar_t__ dwThreadId; scalar_t__ hThread; } ;
struct TYPE_7__ {TYPE_1__ pi; } ;
typedef  TYPE_2__ RIOW32Dbg ;
typedef  TYPE_3__ RDebug ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  R_SYS_BITS_64 ; 
 int THREAD_GET_CONTEXT ; 
 int THREAD_QUERY_INFORMATION ; 
 int THREAD_SUSPEND_RESUME ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC8(RDebug *dbg, int type, ut8 *buf, int size) {
	bool showfpu = false;
	if (type < -1) {
		showfpu = true; // hack for debugging
		type = -type;
	}
	RIOW32Dbg *rio = dbg->user;

	bool alive = FUNC2 (dbg, dbg->tid);
	HANDLE th = rio->pi.dwThreadId == dbg->tid ? rio->pi.hThread : NULL;
	if (!th || th == INVALID_HANDLE_VALUE) {
		DWORD flags = THREAD_SUSPEND_RESUME | THREAD_GET_CONTEXT;
		if (dbg->bits == R_SYS_BITS_64) {
				flags |= THREAD_QUERY_INFORMATION;
		}
		th = FUNC7 (flags, FALSE, dbg->tid);
		if (!th && alive) {
			FUNC6 ("w32_reg_read/OpenThread");
		}
		if (!th) {
			return 0;
		}
	}
	// Always suspend
	if (alive && FUNC5 (th, dbg->bits) == -1) {
		FUNC0 (th);
		return 0;
	}
	size = FUNC1 (th, buf, size, dbg->bits);
	if (showfpu) {
		FUNC3 (th, (CONTEXT *)buf);
	}
	// Always resume
	if (alive && FUNC4 (th, dbg->bits) == -1) {
		size = 0;
	}
	if (th != rio->pi.hThread) {
		FUNC0 (th);
	}
	return size;
}