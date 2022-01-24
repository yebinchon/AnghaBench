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
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  user_process1 ; 

void FUNC6(){
	char buf[30] = {0};
	FUNC5(buf, "User process started\n\r");
	FUNC3(buf);
	unsigned long stack = FUNC2();
	if (stack < 0) {
		FUNC4("Error while allocating stack for process 1\n\r");
		return;
	}
	int err = FUNC0((unsigned long)&user_process1, (unsigned long)"12345", stack);
	if (err < 0){
		FUNC4("Error while clonning process 1\n\r");
		return;
	} 
	stack = FUNC2();
	if (stack < 0) {
		FUNC4("Error while allocating stack for process 1\n\r");
		return;
	}
	err = FUNC0((unsigned long)&user_process1, (unsigned long)"abcd", stack);
	if (err < 0){
		FUNC4("Error while clonning process 2\n\r");
		return;
	} 
	FUNC1();
}