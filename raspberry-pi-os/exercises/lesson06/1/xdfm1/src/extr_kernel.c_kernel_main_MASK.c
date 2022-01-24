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
 int /*<<< orphan*/  PF_KTHREAD ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  kernel_process ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  putc ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9()
{
	FUNC8();
	FUNC3(NULL, putc);
	FUNC4();
	FUNC7();
	FUNC1();
	FUNC2();

	int res = FUNC0(PF_KTHREAD, (unsigned long)&kernel_process, 0);
	if (res < 0) {
		FUNC5("error while starting kernel process");
		return;
	}

	while (1){
		FUNC6();
	}	
}