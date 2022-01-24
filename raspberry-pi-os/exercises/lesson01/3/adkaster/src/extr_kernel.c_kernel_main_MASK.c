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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(int procid)
{
	char procstr[2];
	procstr[0] = procid + '0';
	procstr[1] = 0;

	if(procid == 0) {
		FUNC1();
	}
    else
	{
		FUNC0(100000 * procid);
	}

	FUNC4("Hello from processor ");
	FUNC4(procstr);
	FUNC4("\r\n");

    // Don't spin this with every processor or we'll have issues D:
    if(procid ==0) {
		while (1) {
			FUNC3(FUNC2());
		}
	}
	else {
		while(1) {}
	}
}