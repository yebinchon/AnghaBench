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
struct TYPE_9__ {int /*<<< orphan*/  regprofile; scalar_t__ valid; } ;
struct TYPE_8__ {int is_valid; } ;
struct TYPE_10__ {scalar_t__ connected; int /*<<< orphan*/  registers; TYPE_2__ target; TYPE_1__ stop_reason; int /*<<< orphan*/  sock; } ;
typedef  TYPE_3__ libgdbr_t ;
struct TYPE_11__ {int valid; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ reg_cache ; 

int FUNC4(libgdbr_t *g) {
	// TODO Disconnect maybe send something to gdbserver
	if (!g || !FUNC3 (g->sock)) {
		return -1;
	}
	if (!FUNC1 (g)) {
		goto end;
	}
	reg_cache.valid = false;
	g->stop_reason.is_valid = false;
	FUNC0 (reg_cache.buf);
	if (g->target.valid) {
		FUNC0 (g->target.regprofile);
		FUNC0 (g->registers);
	}
	g->connected = 0;
end:
	FUNC2 (g);
	return 0;
}