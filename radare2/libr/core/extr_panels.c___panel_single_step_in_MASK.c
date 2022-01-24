#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

void FUNC2(RCore *core) {
	if (FUNC0 (core->config, "cfg.debug")) {
		FUNC1 (core, "ds", 0);
		FUNC1 (core, ".dr*", 0);
	} else {
		FUNC1 (core, "aes", 0);
		FUNC1 (core, ".ar*", 0);
	}
}