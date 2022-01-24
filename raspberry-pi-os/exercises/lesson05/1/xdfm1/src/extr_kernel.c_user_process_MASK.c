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
 int FUNC0 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  user_process1 ; 

void FUNC7(){
	char buf[30] = {0};
	FUNC6(buf, "User process started\n\r");
	FUNC3(buf);
	unsigned long stack = FUNC2();
	if (stack < 0) {
		FUNC5("Error while allocating stack for process 1\n\r");
		return;
	}
	int err = FUNC0((unsigned long)&user_process1, (unsigned long)"12345", stack);
	if (err < 0){
		FUNC5("Error while clonning process 1\n\r");
		return;
	} 
	stack = FUNC2();
	if (stack < 0) {
		FUNC5("Error while allocating stack for process 1\n\r");
		return;
	}
	err = FUNC0((unsigned long)&user_process1, (unsigned long)"abcd", stack);
	if (err < 0){
		FUNC5("Error while clonning process 2\n\r");
		return;
	}
	//attempt accessing a system register
	FUNC5("exception level is %d\n\r", FUNC4());
	FUNC1();
}