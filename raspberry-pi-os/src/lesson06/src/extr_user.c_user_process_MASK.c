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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4() 
{
	FUNC2("User process\n\r");
	int pid = FUNC1();
	if (pid < 0) {
		FUNC2("Error during fork\n\r");
		FUNC0();
		return;
	}
	if (pid == 0){
		FUNC3("abcde");
	} else {
		FUNC3("12345");
	}
}