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
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

void FUNC8(char *array)
{
	if(array[0] == '1') {
		FUNC4(1);
		FUNC5(2);
		FUNC6(3);
	} else {
		FUNC4(5);
		FUNC5(6);
		FUNC6(7);
	}

	while (1) {
		for (int i = 0; i < 5; i++){
			unsigned int a = FUNC1();
			unsigned int b = FUNC2();
			unsigned int c = FUNC3();
			FUNC7(a + '0');
			FUNC0(100000);
			FUNC7(b + '0');
			FUNC0(100000);
			FUNC7(c + '0');
			FUNC0(100000);
		}
	}
}