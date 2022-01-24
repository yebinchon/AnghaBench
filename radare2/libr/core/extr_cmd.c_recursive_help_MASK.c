#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ut8 ;
struct TYPE_8__ {struct TYPE_8__** sub; } ;
struct TYPE_7__ {TYPE_2__ root_cmd_descriptor; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RCmdDescriptor ;

/* Variables and functions */
 size_t const FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(RCore *core, int detail, const char *cmd_prefix) {
	const ut8 *p;
	RCmdDescriptor *desc = &core->root_cmd_descriptor;
	for (p = (const ut8 *)cmd_prefix; *p && *p < FUNC0 (desc->sub); p++) {
		if (!(desc = desc->sub[*p])) {
			return;
		}
	}
	FUNC1 (core, detail, desc);
}