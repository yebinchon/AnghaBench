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
typedef  int /*<<< orphan*/  MetaCommand ;

/* Variables and functions */
 int /*<<< orphan*/  META_ELIF ; 
 int /*<<< orphan*/  META_ELSE ; 
 int /*<<< orphan*/  META_ENDIF ; 
 int /*<<< orphan*/  META_GSET ; 
 int /*<<< orphan*/  META_IF ; 
 int /*<<< orphan*/  META_NONE ; 
 int /*<<< orphan*/  META_SET ; 
 int /*<<< orphan*/  META_SETSHELL ; 
 int /*<<< orphan*/  META_SHELL ; 
 int /*<<< orphan*/  META_SLEEP ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static MetaCommand
FUNC1(const char *cmd)
{
	MetaCommand mc;

	if (cmd == NULL)
		mc = META_NONE;
	else if (FUNC0(cmd, "set") == 0)
		mc = META_SET;
	else if (FUNC0(cmd, "setshell") == 0)
		mc = META_SETSHELL;
	else if (FUNC0(cmd, "shell") == 0)
		mc = META_SHELL;
	else if (FUNC0(cmd, "sleep") == 0)
		mc = META_SLEEP;
	else if (FUNC0(cmd, "if") == 0)
		mc = META_IF;
	else if (FUNC0(cmd, "elif") == 0)
		mc = META_ELIF;
	else if (FUNC0(cmd, "else") == 0)
		mc = META_ELSE;
	else if (FUNC0(cmd, "endif") == 0)
		mc = META_ENDIF;
	else if (FUNC0(cmd, "gset") == 0)
		mc = META_GSET;
	else
		mc = META_NONE;
	return mc;
}