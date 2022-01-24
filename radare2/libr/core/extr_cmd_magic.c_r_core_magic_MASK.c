#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_5__ {scalar_t__ offset; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  magicdepth ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(RCore *core, const char *file, int v) {
	ut64 addr = core->offset;
	int hits = 0;
	magicdepth = FUNC0 (core->config, "magic.depth"); // TODO: do not use global var here
	FUNC1 (core, file, addr, magicdepth, v, false, &hits);
	if (addr != core->offset) {
		FUNC2 (core, addr, true);
	}
}