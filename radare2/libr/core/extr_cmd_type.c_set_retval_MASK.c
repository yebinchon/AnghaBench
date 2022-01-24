#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_16__ {int /*<<< orphan*/  reg; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {scalar_t__ ret; } ;
struct TYPE_13__ {TYPE_4__* anal; } ;
typedef  int /*<<< orphan*/  RRegItem ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RAnalHint ;
typedef  TYPE_3__ RAnalFunction ;
typedef  TYPE_4__ RAnal ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 char* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_4__*,char const*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC7 (RCore *core, ut64 at) {
	RAnal *anal = core->anal;
	RAnalHint *hint = FUNC4 (anal, at);
	RAnalFunction *fcn = FUNC2 (anal, at, 0);

	if (!hint || !fcn || !fcn->name) {
		goto beach;
	}
	if (hint->ret == UT64_MAX) {
		goto beach;
	}
	const char *cc = FUNC0 (core->anal, fcn->name);
	const char *regname = FUNC1 (anal, cc);
	if (regname) {
		RRegItem *reg = FUNC5 (anal->reg, regname, -1);
		if (reg) {
			FUNC6 (anal->reg, reg, hint->ret);
		}
	}
beach:
	FUNC3 (hint);
	return;
}