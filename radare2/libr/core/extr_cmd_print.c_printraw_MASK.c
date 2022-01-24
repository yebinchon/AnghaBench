#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int blocksize; scalar_t__ cmd_in_backticks; TYPE_1__* cons; int /*<<< orphan*/  block; int /*<<< orphan*/  offset; int /*<<< orphan*/  print; } ;
struct TYPE_5__ {int newline; } ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(RCore *core, int len, int mode) {
	int obsz = core->blocksize;
	int restore_obsz = 0;
	if (len != obsz) {
		if (!FUNC0 (core, len)) {
			len = core->blocksize;
		} else {
			restore_obsz = 1;
		}
	}
	FUNC1 (core->print, core->offset, core->block, len, mode);
	if (restore_obsz) {
		(void) FUNC0 (core, obsz);
	}
	core->cons->newline = core->cmd_in_backticks ? false : true;
}