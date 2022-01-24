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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  reg; } ;
typedef  TYPE_1__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_TYPE_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  wctx ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(RDebug *dbg, int type, const ut8 *buf, int size) {
	if (!dbg->reg) {
		return false;
	}
	int arena_size;
	ut8 *arena = FUNC2 (dbg->reg, R_REG_TYPE_ALL, &arena_size);
	if (!arena) {
		FUNC0 ("Could not retrieve the register arena!\n");
		return false;
	}
	int ret = FUNC3 (wctx, arena, arena_size);
	FUNC1 (arena);
	return ret;
}