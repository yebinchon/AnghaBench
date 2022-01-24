#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_3__ {int /*<<< orphan*/  config; int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_ARCHINFO_ALIGN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC3(void *user, void *data) {
	RCore *core = (RCore *) user;
	RConfigNode *node = (RConfigNode *) data;
	FUNC1 (core->anal, node->value);
	/* set pcalign */
	{
		int v = FUNC0 (core->anal, R_ANAL_ARCHINFO_ALIGN);
		FUNC2 (core->config, "asm.pcalign", (v != -1)? v: 0);
	}
	return true;
}