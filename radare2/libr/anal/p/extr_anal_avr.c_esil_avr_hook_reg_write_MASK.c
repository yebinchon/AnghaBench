#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ut64 ;
struct TYPE_9__ {int pc; } ;
struct TYPE_8__ {TYPE_1__* anal; } ;
struct TYPE_7__ {int /*<<< orphan*/  cpu; } ;
typedef  TYPE_2__ RAnalEsil ;
typedef  TYPE_3__ CPU_MODEL ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(RAnalEsil *esil, const char *name, ut64 *val) {
	CPU_MODEL *cpu;

	if (!esil || !esil->anal) {
		return 0;
	}

	// select cpu info
	cpu = FUNC2 (esil->anal->cpu);

	// crop registers and force certain values
	if (!FUNC3 (name, "pc")) {
		*val &= FUNC0 (cpu);
	} else if (!FUNC3 (name, "pcl")) {
		if (cpu->pc < 8) {
			*val &= FUNC1 (8);
		}
	} else if (!FUNC3 (name, "pch")) {
		*val = cpu->pc > 8
			? *val & FUNC1 (cpu->pc - 8)
			: 0;
	}

	return 0;
}