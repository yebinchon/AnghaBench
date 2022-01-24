#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_10__ {int /*<<< orphan*/  (* on_fcn_rename ) (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,char*) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  user; TYPE_1__ cb; } ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {TYPE_4__* anal; } ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_FCN_TYPE_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 

__attribute__((used)) static bool FUNC5(RCore *core, ut64 off, const char *_name, bool prefix) {
	FUNC3 (core && _name, false);
	char *name = FUNC1 (core, off, _name, prefix);
	RAnalFunction *fcn = FUNC2 (core->anal, off, R_ANAL_FCN_TYPE_ANY);
	if (fcn) {
		FUNC0 (fcn->name);
		fcn->name = name;
		if (core->anal->cb.on_fcn_rename) {
			core->anal->cb.on_fcn_rename (core->anal,
					core->anal->user, fcn, name);
		}
		return true;
	}
	FUNC0 (name);
	return false;
}