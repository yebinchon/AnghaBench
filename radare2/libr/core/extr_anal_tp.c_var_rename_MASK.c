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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {char const* name; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ RAnalVar ;
typedef  TYPE_2__ RAnalFunction ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  ARGPREFIX ; 
 int /*<<< orphan*/  VARPREFIX ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(RAnal *anal, RAnalVar *v, const char *name, ut64 addr) {
	if (!name || !v) {
		return;
	}
	if (!*name || !FUNC3 (name , "...")) {
		return;
	}
	bool is_default = (FUNC2 (v->name, VARPREFIX)
			|| FUNC2 (v->name, ARGPREFIX))? true: false;
	if (*name == '*') {
		name++;
	}
	// longer name tends to be meaningful like "src" instead of "s1"
	if (!is_default && (FUNC4 (v->name) > FUNC4 (name))) {
		return;
	}
	RAnalFunction *fcn = FUNC0 (anal, addr, 0);
	if (!fcn) {
		return;
	}
	FUNC1 (anal, fcn->addr, 1, v->kind, v->name, name, false);
}