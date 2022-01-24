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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  valid_stdin ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!valid_stdin) {
	        FUNC2("%s",FUNC0("aborted!\n\n"));
		FUNC2("%s",FUNC0("Console input/output is redirected. "));
		FUNC2("%s",FUNC0("Run 'make oldconfig' to update configuration.\n\n"));
		FUNC1(1);
	}
}