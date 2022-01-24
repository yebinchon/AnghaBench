#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ autocomplete_type; int /*<<< orphan*/  autocomplete; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 scalar_t__ AUTOCOMPLETE_DEFAULT ; 
 scalar_t__ AUTOCOMPLETE_MS ; 
 int /*<<< orphan*/  RCoreAutocomplete ; 
 int /*<<< orphan*/  R_CORE_AUTOCMPLT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int ms_argc ; 
 char** ms_argv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4 (RCore* core) {
	int i;
	core->autocomplete = FUNC0 (RCoreAutocomplete);
	if (core->autocomplete_type == AUTOCOMPLETE_DEFAULT) {
		FUNC1 (core);
	} else if (core->autocomplete_type == AUTOCOMPLETE_MS) {
		FUNC2 (core->autocomplete, "ls", R_CORE_AUTOCMPLT_MS, true);
		FUNC2 (core->autocomplete, "cd", R_CORE_AUTOCMPLT_MS, true);
		FUNC2 (core->autocomplete, "cat", R_CORE_AUTOCMPLT_MS, true);
		FUNC2 (core->autocomplete, "get", R_CORE_AUTOCMPLT_MS, true);
		FUNC2 (core->autocomplete, "mount", R_CORE_AUTOCMPLT_MS, true);
		for (i = 0; i < ms_argc && ms_argv[i]; i++) {
			if (!FUNC3 (core->autocomplete, ms_argv[i], true)) {
				FUNC2 (core->autocomplete, ms_argv[i], R_CORE_AUTOCMPLT_MS, true);
			}
		}
	}
}