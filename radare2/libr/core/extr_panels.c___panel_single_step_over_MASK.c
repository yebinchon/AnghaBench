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
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

void FUNC3(RCore *core) {
	bool io_cache = FUNC0 (core->config, "io.cache");
	FUNC1 (core->config, "io.cache", false);
	if (FUNC0 (core->config, "cfg.debug")) {
		FUNC2 (core, "dso", 0);
		FUNC2 (core, ".dr*", 0);
	} else {
		FUNC2 (core, "aeso", 0);
		FUNC2 (core, ".ar*", 0);
	}
	FUNC1 (core->config, "io.cache", io_cache);
}