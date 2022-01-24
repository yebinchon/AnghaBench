#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_MODE_16 ; 
 int /*<<< orphan*/  COLOR_MODE_16M ; 
 int /*<<< orphan*/  COLOR_MODE_256 ; 
 int /*<<< orphan*/  COLOR_MODE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ r ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(void) {
#ifdef __WINDOWS__
	char *alacritty = r_sys_getenv ("ALACRITTY_LOG");
	if (alacritty) {
		// Despite the setting of env vars to the contrary, Alacritty on
		// Windows may not actually support >16 colors out-of-the-box
		// (https://github.com/jwilm/alacritty/issues/1662).
		// TODO: Windows 10 version check.
		r_config_set_i (r.config, "scr.color", COLOR_MODE_16);
		free (alacritty);
		return;
	}
#endif
	char *tmp = FUNC3 ("COLORTERM");
	if (tmp) {
		if ((FUNC2 (tmp, "truecolor") || FUNC2 (tmp, "24bit"))) {
			FUNC1 (r.config, "scr.color", COLOR_MODE_16M);
		}
	} else {
		tmp = FUNC3 ("TERM");
		if (!tmp) {
			return;
		}
		if (FUNC2 (tmp, "truecolor") || FUNC2 (tmp, "24bit")) {
			FUNC1 (r.config, "scr.color", COLOR_MODE_16M);
		} else if (FUNC2 (tmp, "256color")) {
			FUNC1 (r.config, "scr.color", COLOR_MODE_256);
		} else if (!FUNC4 (tmp, "dumb")) {
			// Dumb terminals don't get color by default.
			FUNC1 (r.config, "scr.color", COLOR_MODE_DISABLED);
		}
	}
	FUNC0 (tmp);
}