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
struct TYPE_3__ {char* data; } ;
typedef  int /*<<< orphan*/  RDebug ;

/* Variables and functions */
 int bBreak ; 
 int bStep ; 
 int /*<<< orphan*/  bochs_debug_break ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* desc ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ ripStop ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 void* FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(RDebug *dbg, int pid) {
	if (!FUNC2 (dbg)) {
		return false;
	}
	char strIP[19];
	int i = 0;
	const char *x;
	char *ini = 0, *fin = 0;

	//eprintf ("bochs_wait:\n");

	if (bStep) {
		bStep = false;
	} else {
		FUNC4 (bochs_debug_break, dbg);
		i = 500;
		do {
			FUNC0 (desc);
			if (bBreak) {
				if (desc->data[0]) {
					FUNC1 ("ctrl+c %s\n", desc->data);
					bBreak = false;
					break;
				}
				i--;
				if (!i) {
					bBreak = false;
					FUNC1 ("empty ctrl+c.\n");
					break;
				}
			} else if (desc->data[0]) {
				//eprintf("stop on breakpoint%s\n",desc->data);
				break;
			}
		} while(1);
		FUNC3 ();
	}
	//eprintf ("bochs_wait: loop done\n");
	// Next at t=394241428
	// (0) [0x000000337635] 0020:0000000000337635 (unk. ctxt): add eax, esi              ; 03c6
	ripStop = 0;
	if ((x = FUNC7 (desc->data, "Next at"))) {
		if ((ini = FUNC7 (x, "[0x"))) {
			if ((fin = FUNC7 (ini,"]"))) {
				int len = fin - ini - 1;
				FUNC6 (strIP, ini+1, len);
				strIP[len] = 0;
				//eprintf(" parada EIP = %s\n",strIP);
				ripStop = FUNC5 (NULL, strIP);
			}
		}
	}
	desc->data[0] = 0;

	return true;
}