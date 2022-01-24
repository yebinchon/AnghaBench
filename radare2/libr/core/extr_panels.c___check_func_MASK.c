#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bbs; } ;
struct TYPE_5__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_NULL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(RCore *core) {
	RAnalFunction *fun = FUNC0 (core->anal, core->offset, R_ANAL_FCN_TYPE_NULL);
	if (!fun) {
		FUNC1 ("Not in a function. Type 'df' to define it here");
		return false;
	}
	if (FUNC2 (fun->bbs)) {
		FUNC1 ("No basic blocks in this function. You may want to use 'afb+'.");
		return false;
	}
	return true;
}