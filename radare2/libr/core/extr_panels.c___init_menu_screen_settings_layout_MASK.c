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
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __config_toggle_cb ; 
 int /*<<< orphan*/  __config_value_cb ; 
 char** menus_settings_screen ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(void *_core, const char *parent) {
	RCore *core = (RCore *)_core;
	RStrBuf *rsb = FUNC5 (NULL);
	int i = 0;
	while (menus_settings_screen[i]) {
		const char *menu = menus_settings_screen[i];
		FUNC6 (rsb, menu);
		FUNC2 (rsb, ": ");
		FUNC2 (rsb, FUNC1 (core->config, menu));
		if (!FUNC7 (menus_settings_screen[i], "scr.color")) {
			FUNC0 (core, parent, FUNC4 (rsb), __config_value_cb);
		} else {
			FUNC0 (core, parent, FUNC4 (rsb), __config_toggle_cb);
		}
		i++;
	}
	FUNC3 (rsb);
}