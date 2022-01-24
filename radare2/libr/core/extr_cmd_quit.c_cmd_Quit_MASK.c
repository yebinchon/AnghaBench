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
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {TYPE_2__* num; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *data, const char *input) {
	RCore *core = (RCore *)data;
	if (input[0] == '!') {
		if (input[1] == '!') {
			if (!FUNC4 (false)) {
				FUNC1 (0);
			}
			return -2;
		}
		FUNC2 (core->config, "scr.histsave", "false");
	}
	if (FUNC0 (input[0]) || input[0] == ' ') {
		core->num->value = FUNC3 (core->num, input);
	} else {
		core->num->value = -1;
	}
	return -2;
}