#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  assembly; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parser; int /*<<< orphan*/  assembler; int /*<<< orphan*/  config; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RAsmCode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(RCore *core, const char *arg) {
	if (*arg == '?') {
		FUNC0 ("Usage: pad [hexpairs] # disassembly given bytes\n");
		return;
	}
	FUNC3 (core->assembler, core->offset);
	bool is_pseudo = FUNC4 (core->config, "asm.pseudo");
	RAsmCode *acode = FUNC2 (core->assembler, is_pseudo ? core->parser : NULL, arg);
	if (acode) {
		FUNC5 (acode->assembly);
		FUNC1 (acode);
	} else {
		FUNC0 ("Invalid hexstr\n");
	}
}