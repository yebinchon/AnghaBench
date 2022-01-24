#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* value; } ;
struct TYPE_6__ {TYPE_1__* dbg; } ;
struct TYPE_5__ {int /*<<< orphan*/  btalgo; } ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(void *user, void *data) {
	RCore *core = (RCore*) user;
	RConfigNode *node = (RConfigNode*) data;
	if (*node->value == '?') {
		FUNC1 (node);
		return false;
	}
	FUNC0 (core->dbg->btalgo);
	core->dbg->btalgo = FUNC2 (node->value);
	return true;
}