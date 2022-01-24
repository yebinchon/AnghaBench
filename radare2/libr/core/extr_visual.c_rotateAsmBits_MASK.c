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
struct TYPE_11__ {int bits; } ;
struct TYPE_10__ {TYPE_2__* assembler; int /*<<< orphan*/  config; int /*<<< orphan*/  offset; int /*<<< orphan*/  anal; } ;
struct TYPE_9__ {TYPE_1__* cur; } ;
struct TYPE_8__ {int bits; } ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RAnalHint ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 

__attribute__((used)) static void FUNC3(RCore *core) {
	RAnalHint *hint = FUNC0 (core->anal, core->offset);
	// const char *arch = r_config_get_i (core->config, "asm.arch");
	int bits = hint? hint->bits : FUNC1 (core->config, "asm.bits");
	int retries = 4;
	while (retries > 0) {
		int nb = bits == 64 ? 8:
			bits == 32 ? 64:
			bits == 16 ? 32:
			bits == 8 ? 16: bits;
		if ((core->assembler->cur->bits & nb) == nb) {
			FUNC2 (core, "ahb %d", nb);
			break;
		}
		bits = nb;
		retries--;
	}
}