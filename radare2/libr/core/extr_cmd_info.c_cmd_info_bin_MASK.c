#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ file; int /*<<< orphan*/  bin; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RBinObject ;

/* Variables and functions */
 int /*<<< orphan*/  R_CORE_BIN_ACC_INFO ; 
 int R_MODE_ARRAY ; 
 int R_MODE_JSON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC6(RCore *core, int va, int mode) {
	RBinObject *obj = FUNC2 (core->bin);
	int array = 0;
	if (core->file) {
		if ((mode & R_MODE_JSON) && !(mode & R_MODE_ARRAY)) {
			mode = R_MODE_JSON;
			FUNC3 ("{\"core\":");
		}
		if ((mode & R_MODE_JSON) && (mode & R_MODE_ARRAY)) {
			mode = R_MODE_JSON;
			array = 1;
			FUNC3 (",\"core\":");
		}
		FUNC5 (core, mode);
		if (FUNC0 (obj)) {
			if ((mode & R_MODE_JSON)) {
				FUNC3 (",\"bin\":");
			}
			FUNC4 (core, R_CORE_BIN_ACC_INFO, mode, va, NULL, NULL);
		}
		if ((mode & R_MODE_JSON) && array == 0) {
			FUNC3 ("}\n");
		}
	} else {
		FUNC1 ("No file selected\n");
	}
}