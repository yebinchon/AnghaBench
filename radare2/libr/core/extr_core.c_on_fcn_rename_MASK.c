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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RAnalFunction ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(RAnal *_anal, void* _user, RAnalFunction *fcn, const char *oname) {
	RCore *core = (RCore*)_user;
	const char *cmd = FUNC0 (core->config, "cmd.fcn.rename");
	if (cmd && *cmd) {
		// XXX: wat do with old name here?
		ut64 oaddr = core->offset;
		ut64 addr = fcn->addr;
		FUNC2 (core, addr, 1);
		FUNC1 (core, cmd);
		FUNC2 (core, oaddr, 1);
	}
	return 0;
}