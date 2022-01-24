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
typedef  scalar_t__ ut64 ;
struct TYPE_6__ {int /*<<< orphan*/  config; TYPE_1__* anal; int /*<<< orphan*/  num; int /*<<< orphan*/  assembler; } ;
struct TYPE_5__ {int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(RCore *core) {
	if (FUNC0 (core->assembler)) {
		ut64 gp = FUNC4 (core->num, "loc._gp");
		if (!gp || gp == UT64_MAX) {
			FUNC1 (core->config, "anal.roregs", "zero");
			FUNC3 (core, "10aes@entry0");
			FUNC1 (core->config, "anal.roregs", "zero,gp");
			gp = FUNC5 (core->anal->reg, "gp");
		}
		// eprintf ("[mips] gp: 0x%08"PFMT64x"\n", gp);
		FUNC2 (core->config, "anal.gp", gp);
	}
}