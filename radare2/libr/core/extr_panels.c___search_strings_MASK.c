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
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 char* PANEL_TITLE_STRINGS_BIN ; 
 char* PANEL_TITLE_STRINGS_DATA ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,char const*) ; 

char *FUNC4 (RCore *core, bool whole) {
	const char *title = whole ? PANEL_TITLE_STRINGS_BIN : PANEL_TITLE_STRINGS_DATA;
	const char *str = FUNC1 (core, "Search Strings: ");
	char *db_val = FUNC0 (core, title);
	char *ret = FUNC3 ("%s~%s", db_val, str);
	FUNC2 (db_val);
	return ret;
}