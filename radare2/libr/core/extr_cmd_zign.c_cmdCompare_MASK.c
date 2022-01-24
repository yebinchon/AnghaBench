#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  anal; int /*<<< orphan*/  config; } ;
typedef  int /*<<< orphan*/  RSignOptions ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  help_msg_zc ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int FUNC7(void *data, const char *input) {
	int result = true;
	RCore *core = (RCore *) data;
	const char *raw_bytes_thresh = FUNC1 (core->config, "zign.diff.bthresh");
	const char *raw_graph_thresh = FUNC1 (core->config, "zign.diff.gthresh");
	RSignOptions *options = FUNC6 (raw_bytes_thresh, raw_graph_thresh);

	switch (*input) {
	case ' ':
		if (!input[1]) {
			FUNC0 ("usage: zc other_space\n");
			result = false;
			break;
		}
		result = FUNC3 (core->anal, options, input + 1);
		break;
	case 'n':
		switch (input[1]) {
		case ' ':
			if (!input[2]) {
				FUNC0 ("usage: zcn other_space\n");
				result = false;
				break;
			}
			result = FUNC4 (core->anal, options, input + 2, false);
			break;
		case '!':
			if (input[2] != ' ' || !input[3]) {
				FUNC0 ("usage: zcn! other_space\n");
				result = false;
				break;
			}
			result = FUNC4 (core->anal, options, input + 3, true);
			break;
		default:
			FUNC0 ("usage: zcn! other_space\n");
			result = false;
		}
		break;
	case '?':
		FUNC2 (core, help_msg_zc);
		break;
	default:
		FUNC0 ("usage: zc[?n!] other_space\n");
		result = false;
	}

	FUNC5 (options);

	return result;
}