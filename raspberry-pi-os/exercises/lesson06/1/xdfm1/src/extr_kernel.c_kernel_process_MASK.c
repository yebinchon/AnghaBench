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
 int FUNC0 () ; 
 int FUNC1 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  user_begin ; 
 int /*<<< orphan*/  user_end ; 
 int /*<<< orphan*/  user_process ; 

void FUNC3(){
	FUNC2("Kernel process started. EL %d\r\n", FUNC0());
	unsigned long begin = (unsigned long)&user_begin;
	unsigned long end = (unsigned long)&user_end;
	unsigned long process = (unsigned long)&user_process;
	int err = FUNC1(begin, end - begin, process - begin);
	if (err < 0){
		FUNC2("Error while moving process to user mode\n\r");
	} 
}