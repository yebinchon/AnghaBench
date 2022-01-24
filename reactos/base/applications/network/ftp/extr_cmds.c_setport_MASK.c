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
 int code ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int sendport ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3(int argc, const char *argv[])
{

	sendport = !sendport;
	FUNC2("Use of PORT cmds %s.\n", FUNC1(sendport));
	(void) FUNC0(stdout);
	code = sendport;
}