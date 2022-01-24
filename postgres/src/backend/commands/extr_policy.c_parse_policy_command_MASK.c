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

/* Variables and functions */
 char ACL_DELETE_CHR ; 
 char ACL_INSERT_CHR ; 
 char ACL_SELECT_CHR ; 
 char ACL_UPDATE_CHR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static char
FUNC2(const char *cmd_name)
{
	char		polcmd;

	if (!cmd_name)
		FUNC0(ERROR, "unrecognized policy command");

	if (FUNC1(cmd_name, "all") == 0)
		polcmd = '*';
	else if (FUNC1(cmd_name, "select") == 0)
		polcmd = ACL_SELECT_CHR;
	else if (FUNC1(cmd_name, "insert") == 0)
		polcmd = ACL_INSERT_CHR;
	else if (FUNC1(cmd_name, "update") == 0)
		polcmd = ACL_UPDATE_CHR;
	else if (FUNC1(cmd_name, "delete") == 0)
		polcmd = ACL_DELETE_CHR;
	else
		FUNC0(ERROR, "unrecognized policy command");

	return polcmd;
}