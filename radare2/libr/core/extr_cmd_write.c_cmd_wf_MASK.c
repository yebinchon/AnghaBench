#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* ut64 ;
struct TYPE_8__ {int blocksize; int /*<<< orphan*/  offset; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char const*) ; 
 int FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  help_msg_wf ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (char const*) ; 
 char* FUNC9 (char*,char) ; 

__attribute__((used)) static bool FUNC10(RCore *core, const char *input) {
	if (!core || !*input) {
		return false;
	}
	if (input[1] == '?') {
		FUNC2 ("Usage: wf [file] ([size] ([offset]))\n");
		FUNC6 (core, help_msg_wf);
		return false;
	}
	if (input[1] == 's') { // "wfs"
		return FUNC1 (core, input + 1);
	}
	if (input[1] == 'f') { // "wff"
		return FUNC0 (core, input + 1);
	}
	char *args = FUNC8 (input + 1);
	char *arg = FUNC9 (args, ' ');
	int len = core->blocksize;
	if (arg) {
		*arg++ = 0;
		len = FUNC7 (core->num, arg);
	}
	ut64 addr = FUNC7 (core->num, args);
	FUNC4 (core, core->offset, addr, len);
	FUNC3 (args);
	FUNC5 (core);
	return true;
}