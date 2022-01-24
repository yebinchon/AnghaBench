#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* value; } ;
struct TYPE_5__ {TYPE_1__* bin; } ;
struct TYPE_4__ {int /*<<< orphan*/ * strpurge; } ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RConfigNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(void *user, void *data) {
	RCore *core = (RCore*) user;
	RConfigNode *node = (RConfigNode*) data;
	if (*node->value == '?') {
		FUNC1 (
		    "There can be multiple entries separated by commas. No whitespace before/after entries.\n"
		    "Possible entries:\n"
		    "  all          : purge all strings\n"
		    "  true         : use the false_positive() classifier in cbin.c\n"
		    "  addr         : purge string at addr\n"
		    "  addr1-addr2  : purge all strings in the range addr1-addr2 inclusive\n"
		    "  !addr        : prevent purge of string at addr by prev entries\n"
		    "  !addr1-addr2 : prevent purge of strings in range addr1-addr2 inclusive by prev entries\n"
		    "Neither !true nor !false is supported.\n"
		    "\n"
		    "Examples:\n"
		    "  e bin.str.purge=true,0-0xff,!0x1a\n"
		    "    -- purge strings using the false_positive() classifier in cbin.c and also strings \n"
		    "       with addresses in the range 0-0xff, but not the string at 0x1a.\n"
		    "  e bin.str.purge=all,!0x1000-0x1fff\n"
		    "    -- purge all strings except the strings with addresses in the range 0x1000-0x1fff.\n");
		return false;
	}
	FUNC0 (core->bin->strpurge);
	core->bin->strpurge = !*node->value || !FUNC2 (node->value, "false")
	                ? NULL : FUNC3 (node->value);
	return true;
}