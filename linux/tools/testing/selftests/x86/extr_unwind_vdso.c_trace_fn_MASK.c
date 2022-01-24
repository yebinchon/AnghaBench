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
struct unwind_state {int depth; unsigned long ip; } ;
struct _Unwind_Context {int dummy; } ;
typedef  int /*<<< orphan*/  _Unwind_Reason_Code ;

/* Variables and functions */
 unsigned long SYS_getpid ; 
 int /*<<< orphan*/  _URC_NORMAL_STOP ; 
 int /*<<< orphan*/  _URC_NO_REASON ; 
 unsigned long FUNC0 (struct _Unwind_Context*,int) ; 
 unsigned long FUNC1 (struct _Unwind_Context*) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned long return_address ; 

_Unwind_Reason_Code FUNC4(struct _Unwind_Context * ctx, void *opaque)
{
	struct unwind_state *state = opaque;
	unsigned long ip = FUNC1(ctx);

	if (state->depth == -1) {
		if (ip == state->ip)
			state->depth = 0;
		else
			return _URC_NO_REASON;	/* Not there yet */
	}
	FUNC3("\t  0x%lx\n", ip);

	if (ip == return_address) {
		/* Here we are. */
		unsigned long eax = FUNC0(ctx, 0);
		unsigned long ecx = FUNC0(ctx, 1);
		unsigned long edx = FUNC0(ctx, 2);
		unsigned long ebx = FUNC0(ctx, 3);
		unsigned long ebp = FUNC0(ctx, 5);
		unsigned long esi = FUNC0(ctx, 6);
		unsigned long edi = FUNC0(ctx, 7);
		bool ok = (eax == SYS_getpid || eax == FUNC2()) &&
			ebx == 1 && ecx == 2 && edx == 3 &&
			esi == 4 && edi == 5 && ebp == 6;

		if (!ok)
			nerrs++;
		FUNC3("[%s]\t  NR = %ld, args = %ld, %ld, %ld, %ld, %ld, %ld\n",
		       (ok ? "OK" : "FAIL"),
		       eax, ebx, ecx, edx, esi, edi, ebp);

		return _URC_NORMAL_STOP;
	} else {
		state->depth++;
		return _URC_NO_REASON;
	}
}