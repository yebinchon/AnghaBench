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
struct TYPE_4__ {struct TYPE_4__** sub; scalar_t__ help_detail2; scalar_t__ help_detail; scalar_t__ help_msg; } ;
typedef  int /*<<< orphan*/  RCore ;
typedef  TYPE_1__ RCmdDescriptor ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC2(RCore *core, int detail, RCmdDescriptor *desc) {
	int i;
	if (desc->help_msg) {
		FUNC1 (core, desc->help_msg);
	}
	if (detail >= 1) {
		if (desc->help_detail) {
			FUNC1 (core, desc->help_detail);
		}
		if (detail >= 2 && desc->help_detail2) {
			FUNC1 (core, desc->help_detail2);
		}
	}
	for (i = 32; i < FUNC0 (desc->sub); i++) {
		if (desc->sub[i]) {
			FUNC2 (core, detail, desc->sub[i]);
		}
	}
}