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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_4__ {int /*<<< orphan*/  anal; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RList *FUNC3(RCore *core, ut64 addr, RAnalBlock *dest) {
	RAnalBlock *bb;
	RList *ret;
	bb = FUNC1 (core->anal, addr);
	if (bb == dest) {
		FUNC0 ("path found!");
		return NULL;
	}
	ret = FUNC2 (core, bb, dest);
	return ret;
}