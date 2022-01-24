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
 scalar_t__ SUCCESS ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(char *type) { /* {{{ */
	char *help;

	if (!type) {
		FUNC2(FUNC0("overview!"));
		return;
	}

	help = FUNC0(type);

	if (!help || FUNC1(help, "", sizeof("")) == SUCCESS) {
		FUNC2(FUNC0("overview!"));
		FUNC2(
			"\nrequested help page could not be found");
		return;
	}

	FUNC2(help);
}