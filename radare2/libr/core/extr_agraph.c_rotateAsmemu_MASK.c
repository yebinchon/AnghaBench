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
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC2(RCore *core) {
	const bool isEmuStr = FUNC0 (core->config, "emu.str");
	const bool isEmu = FUNC0 (core->config, "asm.emu");
	if (isEmu) {
		if (isEmuStr) {
			FUNC1 (core->config, "emu.str", "false");
		} else {
			FUNC1 (core->config, "asm.emu", "false");
		}
	} else {
		FUNC1 (core->config, "emu.str", "true");
	}
}