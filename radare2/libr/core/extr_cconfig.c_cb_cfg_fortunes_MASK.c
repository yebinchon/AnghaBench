#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* value; } ;
typedef  int /*<<< orphan*/  RCore ;
typedef  TYPE_1__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(void *user, void *data) {
	RCore *core = (RCore *)user;
	RConfigNode *node = (RConfigNode *)data;
	// TODO CN_BOOL option does not receive the right hand side of assignment as an argument
	if (node->value[0] == '?') {
		FUNC0 (core);
		return false;
	}
	return true;
}