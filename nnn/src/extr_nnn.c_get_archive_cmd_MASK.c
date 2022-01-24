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
 int /*<<< orphan*/  ARCHIVE_CMD_LEN ; 
 size_t ATOOL ; 
 size_t BSDTAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * utils ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(char *cmd, char *archive)
{
	if (FUNC0(utils[ATOOL]))
		FUNC2(cmd, "atool -a", ARCHIVE_CMD_LEN);
	else if (FUNC0(utils[BSDTAR]))
		FUNC2(cmd, "bsdtar -acvf", ARCHIVE_CMD_LEN);
	else if (FUNC1(archive, ".zip"))
		FUNC2(cmd, "zip -r", ARCHIVE_CMD_LEN);
	else
		FUNC2(cmd, "tar -acvf", ARCHIVE_CMD_LEN);
}