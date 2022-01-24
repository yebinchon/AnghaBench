#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ut32 ;
struct TYPE_7__ {int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ,int) ;scalar_t__ name; } ;
struct TYPE_6__ {int blocksize; int /*<<< orphan*/  block; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* hash_handlers ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,char) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,char*) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC10(RCore *core, const char *input) {
	char algo[128];
	ut32 osize = 0, len = core->blocksize;
	const char *ptr;
	int pos = 0, handled_cmd = false;

	if (!*input || *input == '?') {
		FUNC0 (1);
		return true;
	}
	if (*input == '=') {
		FUNC0 (0);
		return true;
	}
	input = FUNC6 (input);
	ptr = FUNC8 (input, ' ');
	FUNC7 (input, "%31s", algo);
	if (ptr && ptr[1]) { // && r_num_is_valid_input (core->num, ptr + 1)) {
		int nlen = FUNC4 (core->num, ptr + 1);
		if (nlen > 0) {
			len = nlen;
		}
		osize = core->blocksize;
		if (nlen > core->blocksize) {
			FUNC3 (core, nlen);
			if (nlen != core->blocksize) {
				FUNC1 ("Invalid block size\n");
				FUNC3 (core, osize);
				return false;
			}
			FUNC2 (core);
		}
	} else if (!ptr || !*(ptr + 1)) {
		osize = len;
	}
	/* TODO: Simplify this spaguetti monster */
	while (osize > 0 && hash_handlers[pos].name) {
		if (!FUNC5 (hash_handlers[pos].name, input, ' ')) {
			hash_handlers[pos].handler (core->block, len);
			handled_cmd = true;
			break;
		}
		pos++;
	}
	if (osize) {
		FUNC3 (core, osize);
	}
	return handled_cmd;
}