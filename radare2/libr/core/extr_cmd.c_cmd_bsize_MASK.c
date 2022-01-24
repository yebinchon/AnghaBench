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
typedef  int ut64 ;
typedef  int ut32 ;
struct TYPE_7__ {int blocksize_max; int blocksize; int /*<<< orphan*/  num; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int size; } ;
typedef  TYPE_1__ RFlagItem ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  help_msg_b ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6(void *data, const char *input) {
	ut64 n;
	RFlagItem *flag;
	RCore *core = (RCore *)data;
	switch (input[0]) {
	case 'm': // "bm"
		n = FUNC5 (core->num, input + 1);
		if (n > 1) {
			core->blocksize_max = n;
		} else {
			FUNC1 ("0x%x\n", (ut32)core->blocksize_max);
		}
		break;
	case '+': // "b+"
		n = FUNC5 (core->num, input + 1);
		FUNC2 (core, core->blocksize + n);
		break;
	case '-': // "b-"
		n = FUNC5 (core->num, input + 1);
		FUNC2 (core, core->blocksize - n);
		break;
	case 'f': // "bf"
		if (input[1] == ' ') {
			flag = FUNC4 (core->flags, input + 2);
			if (flag) {
				FUNC2 (core, flag->size);
			} else {
				FUNC0 ("bf: cannot find flag named '%s'\n", input + 2);
			}
		} else {
			FUNC0 ("Usage: bf [flagname]\n");
		}
		break;
	case 'j': // "bj"
		FUNC1 ("{\"blocksize\":%d,\"blocksize_limit\":%d}\n", core->blocksize, core->blocksize_max);
		break;
	case '*': // "b*"
		FUNC1 ("b 0x%x\n", core->blocksize);
		break;
	case '\0': // "b"
		FUNC1 ("0x%x\n", core->blocksize);
		break;
	case ' ':
		FUNC2 (core, FUNC5 (core->num, input));
		break;
	default:
	case '?': // "b?"
		FUNC3 (core, help_msg_b);
		break;
	}
	return 0;
}