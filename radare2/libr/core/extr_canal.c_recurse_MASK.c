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
struct TYPE_5__ {int /*<<< orphan*/  fail; int /*<<< orphan*/  jump; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RCore ;
typedef  TYPE_1__ RAnalBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static RList *FUNC1(RCore *core, RAnalBlock *from, RAnalBlock *dest) {
	FUNC0 (core, from->jump, dest);
	FUNC0 (core, from->fail, dest);

	/* same for all calls */
	// TODO: RAnalBlock must contain a linked list of calls
	return NULL;
}