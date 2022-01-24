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
struct TYPE_5__ {TYPE_1__* anal; int /*<<< orphan*/  config; } ;
struct TYPE_4__ {int /*<<< orphan*/ * esil; int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RCore ;
typedef  int /*<<< orphan*/  RConfigHold ;

/* Variables and functions */
 int /*<<< orphan*/  R_REG_NAME_BP ; 
 int /*<<< orphan*/  R_REG_NAME_SP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static bool FUNC6(RCore *core, RConfigHold *hc) {
	FUNC1 (hc, "esil.romem", "asm.trace", "dbg.trace",
			"esil.nonull", "dbg.follow", NULL);
	FUNC2 (core->config, "esil.romem", "true");
	FUNC2 (core->config, "asm.trace", "true");
	FUNC2 (core->config, "dbg.trace", "true");
	FUNC2 (core->config, "esil.nonull", "true");
	FUNC3 (core->config, "dbg.follow", false);
	const char *bp = FUNC4 (core->anal->reg, R_REG_NAME_BP);
	const char *sp = FUNC4 (core->anal->reg, R_REG_NAME_SP);
	if ((bp && !FUNC5 (core->anal->reg, bp)) && (sp && !FUNC5 (core->anal->reg, sp))) {
		FUNC0 ("Stack isn't initialized.\n");
		FUNC0 ("Try running aei and aeim commands before aft for default stack initialization\n");
		return false;
	}
	return (core->anal->esil != NULL);
}