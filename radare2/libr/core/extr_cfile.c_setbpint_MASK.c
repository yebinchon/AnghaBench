#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int internal; void* data; } ;
struct TYPE_10__ {TYPE_1__* dbg; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  offset; } ;
struct TYPE_8__ {int /*<<< orphan*/  bp; } ;
typedef  TYPE_2__ RFlagItem ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RBreakpointItem ;

/* Variables and functions */
 int /*<<< orphan*/  R_BP_PROT_EXEC ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 void* FUNC3 (char*,char const*,char const*) ; 

__attribute__((used)) static bool FUNC4(RCore *r, const char *mode, const char *sym) {
	RBreakpointItem *bp;
	RFlagItem *fi = FUNC2 (r->flags, sym);
	if (!fi) {
		return false;
	}
	bp = FUNC1 (r->dbg->bp, fi->offset, 1, R_BP_PROT_EXEC);
	if (bp) {
		bp->internal = true;
#if __linux__
		bp->data = FUNC3 ("?e %s: %s", mode, sym);
#else
		bp->data = r_str_newf ("?e %s: %s;ps@rdi", mode, sym);
#endif
		return true;
	}
	FUNC0 ("Cannot set breakpoint at %s\n", sym);
	return false;
}