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
struct TYPE_7__ {char* value; } ;
struct TYPE_6__ {int /*<<< orphan*/  config; int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;
typedef  TYPE_2__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static bool FUNC7(void *user, void *data) {
	RCore *core = (RCore*) user;
	RConfigNode *node = (RConfigNode*) data;
	if (*node->value == '?') {
		FUNC6 (core, node);
		FUNC1 (node);
		return false;
	}
	if (*node->value) {
		if (FUNC2 (core->anal, node->value)) {
			return true;
		}
		const char *aa = FUNC3 (core->config, "asm.arch");
		if (!aa || FUNC5 (aa, node->value)) {
			FUNC0 ("anal.arch: cannot find '%s'\n", node->value);
		} else {
			FUNC4 (core->config, "anal.arch", "null");
			return true;
		}
	}
	return false;
}