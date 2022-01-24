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
struct TYPE_7__ {char const* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RBreakpointItem ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 

__attribute__((used)) static void FUNC5(RCore *core, RBreakpointItem *bpi) {
	const char *cmdbp = FUNC0 (core->config, "cmd.bp");
	const bool cmdbp_exists = (cmdbp && *cmdbp);
	const bool bpcmd_exists = (bpi->data && bpi->data[0]);
	const bool may_output = (cmdbp_exists || bpcmd_exists);
	if (may_output) {
		FUNC3 ();
	}
	if (cmdbp_exists) {
		FUNC4 (core, cmdbp);
	}
	if (bpcmd_exists) {
		FUNC4 (core, bpi->data);
	}
	if (may_output) {
		FUNC1 ();
		FUNC2 ();
	}
}