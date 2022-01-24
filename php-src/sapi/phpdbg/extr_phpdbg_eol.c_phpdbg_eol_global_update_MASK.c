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
typedef  int /*<<< orphan*/  PHPDBG_G ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  PHPDBG_EOL_CR ; 
 int /*<<< orphan*/  PHPDBG_EOL_CRLF ; 
 int /*<<< orphan*/  PHPDBG_EOL_LF ; 
 int SUCCESS ; 
 scalar_t__ FUNC0 (char*,char*) ; 

int FUNC1(char *name)
{

	if (0 == FUNC0(name, "CRLF") || 0 == FUNC0(name, "crlf") || 0 == FUNC0(name, "DOS") || 0 == FUNC0(name, "dos")) {
		PHPDBG_G(eol) = PHPDBG_EOL_CRLF;
	} else if (0 == FUNC0(name, "LF") || 0 == FUNC0(name, "lf") || 0 == FUNC0(name, "UNIX") || 0 == FUNC0(name, "unix")) {
		PHPDBG_G(eol) = PHPDBG_EOL_LF;
	} else if (0 == FUNC0(name, "CR") || 0 == FUNC0(name, "cr") || 0 == FUNC0(name, "MAC") || 0 == FUNC0(name, "mac")) {
		PHPDBG_G(eol) = PHPDBG_EOL_CR;
	} else {
		return FAILURE;
	}

	return SUCCESS;
}