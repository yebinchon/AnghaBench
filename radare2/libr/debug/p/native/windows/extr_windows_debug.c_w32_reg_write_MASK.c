#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_5__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  tid; } ;
typedef  TYPE_1__ RDebug ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int R_REG_TYPE_DRX ; 
 int /*<<< orphan*/  R_SYS_BITS_64 ; 
 int THREAD_QUERY_INFORMATION ; 
 int THREAD_SET_CONTEXT ; 
 int THREAD_SUSPEND_RESUME ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(RDebug *dbg, int type, const ut8 *buf, int size) {
	DWORD flags = THREAD_SUSPEND_RESUME | THREAD_SET_CONTEXT;
	if (dbg->bits == R_SYS_BITS_64) {
		flags |= THREAD_QUERY_INFORMATION;
	}
	HANDLE th = FUNC7 (flags, FALSE, dbg->tid);
	if (!th) {
		FUNC6 ("w32_reg_write/OpenThread");
		return false;
	}
	bool alive = FUNC1 (dbg, dbg->tid);
	// Always suspend
	if (alive && FUNC4 (th, dbg->bits) == -1) {
		FUNC0 (th);
		return false;
	}
	if (type == R_REG_TYPE_DRX) {
		FUNC5 (dbg, buf);
	}
	bool ret = FUNC3 (th, buf, size, dbg->bits);
	// Always resume
	if (alive && FUNC2 (th, dbg->bits) == -1) {
		ret = false;
	}
	FUNC0 (th);
	return ret;
}