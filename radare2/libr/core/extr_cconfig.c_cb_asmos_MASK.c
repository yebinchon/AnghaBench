#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  syscall; } ;
struct TYPE_8__ {char* value; } ;
struct TYPE_7__ {TYPE_5__* anal; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  R_SYS_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(void *user, void *data) {
	RCore *core = (RCore*) user;
	int asmbits = FUNC5 (core->config, "asm.bits");
	RConfigNode *asmarch, *node = (RConfigNode*) data;

	if (*node->value == '?') {
		FUNC2 (node);
		return 0;
	}
	if (!node->value[0]) {
		FUNC1 (node->value);
		node->value = FUNC9 (R_SYS_OS);
	}
	asmarch = FUNC6 (core->config, "asm.arch");
	if (asmarch) {
		const char *asmcpu = FUNC4 (core->config, "asm.cpu");
		FUNC8 (core->anal->syscall, asmarch->value, core->anal->bits, asmcpu, node->value);
		FUNC0 (core->config, asmarch->value, asmbits);
	}
	FUNC3 (core->anal, node->value);
	FUNC7 (core);
	return true;
}