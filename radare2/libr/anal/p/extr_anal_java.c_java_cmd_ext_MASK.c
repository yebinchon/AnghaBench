#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RBinJavaObj ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(RAnal *anal, const char* input) {
	RBinJavaObj *obj = (RBinJavaObj *) FUNC1 (anal);

	if (!obj) {
		FUNC0 ("Execute \"af\" to set the current bin, and this will bind the current bin\n");
		return -1;
	}
	switch (*input) {
	case 'c':
		// reset bytes counter for case operations
		FUNC3 ();
		break;
	case 'u':
		switch (*(input+1)) {
			case 't': {FUNC2 (anal, obj); return true;}
			default: break;
		}
		break;
	case 's':
		switch (*(input+1)) {
			//case 'e': return java_resolve_cp_idx_b64 (anal, input+2);
			default: break;
		}
		break;

	default: FUNC0("Command not supported"); break;
	}
	return 0;
}