#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  num; int /*<<< orphan*/  current_task; } ;
struct TYPE_17__ {int transient; int /*<<< orphan*/  res; } ;
typedef  TYPE_1__ RCoreTask ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char const) ; 
 TYPE_1__* FUNC11 (TYPE_2__*,int,char const*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(void *data, const char *input) {
	RCore *core = (RCore*) data;
	switch (input[0]) {
	case '\0': // "&"
	case 'j': // "&j"
		FUNC10 (core, *input);
		break;
	case 'b': { // "&b"
		if (FUNC13 (0)) {
			FUNC0 ("This command is disabled in sandbox mode\n");
			return 0;
		}
		int tid = FUNC12 (core->num, input + 1);
		if (tid) {
			FUNC3 (core, tid);
		}
		break;
	}
	case '&': { // "&&"
		if (FUNC13 (0)) {
			FUNC0 ("This command is disabled in sandbox mode\n");
			return 0;
		}
		int tid = FUNC12 (core->num, input + 1);
		FUNC9 (core, core->current_task, tid ? tid : -1);
		break;
	}
	case '=': { // "&="
		// r_core_task_list (core, '=');
		int tid = FUNC12 (core->num, input + 1);
		if (tid) {
			RCoreTask *task = FUNC8 (core, tid);
			if (task) {
				if (task->res) {
					FUNC2 (task->res);
				}
				FUNC4 (task);
			} else {
				FUNC0 ("Cannot find task\n");
			}
		}
		break;
	}
	case '-': // "&-"
		if (FUNC13 (0)) {
			FUNC0 ("This command is disabled in sandbox mode\n");
			return 0;
		}
		if (input[1] == '*') {
			FUNC6 (core);
		} else {
			FUNC5 (core, FUNC12 (core->num, input + 1));
		}
		break;
	case '?': // "&?"
	default:
		FUNC1 (core);
		break;
	case ' ': // "& "
	case '_': // "&_"
	case 't': { // "&t"
		if (FUNC13 (0)) {
			FUNC0 ("This command is disabled in sandbox mode\n");
			return 0;
		}
		RCoreTask *task = FUNC11 (core, true, input + 1, NULL, core);
		if (!task) {
			break;
		}
		task->transient = input[0] == 't';
		FUNC7 (core, task);
		break;
	}
	}
	return 0;
}