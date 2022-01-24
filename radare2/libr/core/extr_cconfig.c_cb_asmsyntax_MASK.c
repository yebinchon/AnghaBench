#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* value; } ;
struct TYPE_4__ {int /*<<< orphan*/  assembler; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(void *user, void *data) {
	RCore *core = (RCore*) user;
	RConfigNode *node = (RConfigNode*) data;
	if (*node->value == '?') {
		FUNC0 (node);
		return false;
	} else {
		int syntax = FUNC2 (node->value);
		if (syntax == -1) {
			return false;
		}
		FUNC1 (core->assembler, syntax);
	}
	return true;
}